class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all
  end

  def calculategeneraltable(championship_id, team_id)
    
    @pg = 0
    @wg = 0
    @tg = 0
    @lg = 0
    @sg = 0
    @rg = 0
    @gd = 0
    @pts = 0
    @test1 = 0
    @test2 = 0

    @tablegames = Game.all.where(status: "Terminado", home_team: team_id)


    @tablegames.each do |game|
      @pg = @pg + 1

      @sg = @sg + game.home_team_result
      @rg = @rg + game.visit_team_result
      @gd = @gd + (game.home_team_result - game.visit_team_result)

      if game.home_team_result > game.visit_team_result
        @wg = @wg + 1
        @pts = @pts + 3
      elsif game.home_team_result == game.visit_team_result
        @tg = @tg + 1
        @pts = @pts + 1
      elsif game.home_team_result < game.visit_team_result
        @lg = @lg + 1
      end
    end



    @tablegames = Game.all.where(status: "Terminado", visit_team: team_id)

    @tablegames.each do |game|
      @pg = @pg + 1
      @sg = @sg + game.visit_team_result
      @rg = @rg + game.home_team_result
      @gd = @gd + (game.visit_team_result - game.home_team_result)

      if game.visit_team_result > game.home_team_result
        @wg = @wg + 1
        @pts = @pts + 3
      elsif game.home_team_result == game.visit_team_result
        @tg = @tg + 1
        @pts = @pts + 1
      elsif game.visit_team_result < game.home_team_result
        @lg = @lg + 1
      end
    end



    @table = Championshiptable.new
    @table.deletetable(championship_id, team_id)
    @table.championship_id = championship_id
    @table.championship_id = championship_id
    @table.category = Tournament.find(championship_id).category
    @table.team_id = team_id
    @table.pg = @pg
    @table.wg = @wg
    @table.tg = @tg
    @table.lg = @lg
    @table.sg = @sg
    @table.rg = @rg
    @table.gd = @gd
    @table.pts = @pts
    @table.save

  end

  def gamedetail
    @game = Game.find(params[:format])
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
    @gameaction = Gameaction.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|

      calculategeneraltable(@game.tournament_id, @game.home_team)
      calculategeneraltable(@game.tournament_id, @game.visit_team)

      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update

    @gameparam = params[:game]

    updategameplayers(params[:local_subs_ids], params[:id], @gameparam[:home_team], "Sub")
    updategameplayers(params[:visit_subs_ids], params[:id], @gameparam[:visit_team], 'Sub')

    updategameplayers(params[:local_starter_ids], params[:id], @gameparam[:home_team], 'Starter')
    updategameplayers(params[:visit_starter_ids], params[:id], @gameparam[:visit_team], 'Starter')   

    calculategeneraltable(@game.tournament_id, @game.home_team)
    calculategeneraltable(@game.tournament_id, @game.visit_team)

    CreateGameaction(params[:action_id])
    
    respond_to do |format|
      if @game.update(game_params)
         format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def CreateGameaction(action_id, game_id)

    if action_id != nil
        #Continua aca Jr Diaz
        Gameaction.create(game_id: game_id)
    end
  end
  

  def updategameplayers(players, idgame, idteam, playertype)

    if players != nil

      players.each do |player|
      
          gameplayer = Gameplayer.where(idgame: idgame, player_id: player).first
          playerposition = Player.find(player).position
      
          if gameplayer == nil
            Gameplayer.create(idgame: idgame, player_id: player, iteam: idteam, playertype: playertype, position: Player.position_values[playerposition])
          else

            gameplayer.update(position: Player.position_values[playerposition])
            
            #gameplayer.save
          end 
      end
      
      Gameplayer.where(player_id: players, idgame: idgame).update_all playertype: playertype, iteam: idteam
    end
  end



  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def lineup
     #flash[:notice] = "Updated products!"
     
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:home_team, :home_team_result, :visit_team, :visit_team_result, :stadium, :game_date, :tournament_id, :status, :points, :scorepoints)
    end
end
