class ChampionshiptablesController < ApplicationController
  before_action :set_championshiptable, only: [:show, :edit, :update, :destroy]

  # GET /championshiptables
  # GET /championshiptables.json
  def index
    @championshiptables = Championshiptable.all
  end


  # GET /championshiptables/1
  # GET /championshiptables/1.json
  def show
  end

  # GET /championshiptables/new
  def new
    @championshiptable = Championshiptable.new
  end

  # GET /championshiptables/1/edit
  def edit
  end

  # POST /championshiptables
  # POST /championshiptables.json
  def create
    @championshiptable = Championshiptable.new(championshiptable_params)

    respond_to do |format|
      if @championshiptable.save
        format.html { redirect_to @championshiptable, notice: 'Championshiptable was successfully created.' }
        format.json { render :show, status: :created, location: @championshiptable }
      else
        format.html { render :new }
        format.json { render json: @championshiptable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /championshiptables/1
  # PATCH/PUT /championshiptables/1.json
  def update
    respond_to do |format|
      if @championshiptable.update(championshiptable_params)
        format.html { redirect_to @championshiptable, notice: 'Championshiptable was successfully updated.' }
        format.json { render :show, status: :ok, location: @championshiptable }
      else
        format.html { render :edit }
        format.json { render json: @championshiptable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /championshiptables/1
  # DELETE /championshiptables/1.json
  def destroy
    @championshiptable.destroy
    respond_to do |format|
      format.html { redirect_to championshiptables_url, notice: 'Championshiptable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_championshiptable
      @championshiptable = Championshiptable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def championshiptable_params
      params.require(:championshiptable).permit(:pg, :wg, :tg, :lg, :sg, :rg, :gd, :pts, :team_id, :championship_id, :category)
    end
end
