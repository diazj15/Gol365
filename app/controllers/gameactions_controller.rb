class GameactionsController < ApplicationController
  before_action :set_gameaction, only: [:show, :edit, :update, :destroy]

  # GET /gameactions
  # GET /gameactions.json
  def index
    @gameactions = Gameaction.all
  end

  # GET /gameactions/1
  # GET /gameactions/1.json
  def show
  end

  # GET /gameactions/new
  def new
    @gameaction = Gameaction.new
  end

  # GET /gameactions/1/edit
  def edit
  end

  # POST /gameactions
  # POST /gameactions.json
  def create
    @gameaction = Gameaction.new(gameaction_params)

    respond_to do |format|
      if @gameaction.save
        format.html { redirect_to @gameaction, notice: 'Gameaction was successfully created.' }
        format.json { render :show, status: :created, location: @gameaction }
      else
        format.html { render :new }
        format.json { render json: @gameaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gameactions/1
  # PATCH/PUT /gameactions/1.json
  def update
    respond_to do |format|
      if @gameaction.update(gameaction_params)
        format.html { redirect_to @gameaction, notice: 'Gameaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @gameaction }
      else
        format.html { render :edit }
        format.json { render json: @gameaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gameactions/1
  # DELETE /gameactions/1.json
  def destroy
    @gameaction.destroy
    respond_to do |format|
      format.html { redirect_to gameactions_url, notice: 'Gameaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameaction
      @gameaction = Gameaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gameaction_params
      params.require(:gameaction).permit(:action_id, :game_id, :team_id, :minute, :payer_id, :comments, :half_number)
    end
end
