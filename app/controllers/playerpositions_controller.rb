class PlayerpositionsController < ApplicationController
  before_action :set_playerposition, only: [:show, :edit, :update, :destroy]

  # GET /playerpositions
  # GET /playerpositions.json
  def index
    @playerpositions = Playerposition.all
  end

  # GET /playerpositions/1
  # GET /playerpositions/1.json
  def show
  end

  # GET /playerpositions/new
  def new
    @playerposition = Playerposition.new
  end

  # GET /playerpositions/1/edit
  def edit
  end

  # POST /playerpositions
  # POST /playerpositions.json
  def create
    @playerposition = Playerposition.new(playerposition_params)

    respond_to do |format|
      if @playerposition.save
        format.html { redirect_to @playerposition, notice: 'Playerposition was successfully created.' }
        format.json { render :show, status: :created, location: @playerposition }
      else
        format.html { render :new }
        format.json { render json: @playerposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playerpositions/1
  # PATCH/PUT /playerpositions/1.json
  def update
    respond_to do |format|
      if @playerposition.update(playerposition_params)
        format.html { redirect_to @playerposition, notice: 'Playerposition was successfully updated.' }
        format.json { render :show, status: :ok, location: @playerposition }
      else
        format.html { render :edit }
        format.json { render json: @playerposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playerpositions/1
  # DELETE /playerpositions/1.json
  def destroy
    @playerposition.destroy
    respond_to do |format|
      format.html { redirect_to playerpositions_url, notice: 'Playerposition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playerposition
      @playerposition = Playerposition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playerposition_params
      params.require(:playerposition).permit(:description, :image)
    end
end
