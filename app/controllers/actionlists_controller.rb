class ActionlistsController < ApplicationController
  before_action :set_actionlist, only: [:show, :edit, :update, :destroy]

  # GET /actionlists
  # GET /actionlists.json
  def index
    @actionlists = Actionlist.all
  end

  # GET /actionlists/1
  # GET /actionlists/1.json
  def show
  end

  # GET /actionlists/new
  def new
    @actionlist = Actionlist.new
  end

  # GET /actionlists/1/edit
  def edit
  end

  # POST /actionlists
  # POST /actionlists.json
  def create
    @actionlist = Actionlist.new(actionlist_params)

    respond_to do |format|
      if @actionlist.save
        format.html { redirect_to @actionlist, notice: 'Actionlist was successfully created.' }
        format.json { render :show, status: :created, location: @actionlist }
      else
        format.html { render :new }
        format.json { render json: @actionlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actionlists/1
  # PATCH/PUT /actionlists/1.json
  def update
    respond_to do |format|
      if @actionlist.update(actionlist_params)
        format.html { redirect_to @actionlist, notice: 'Actionlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @actionlist }
      else
        format.html { render :edit }
        format.json { render json: @actionlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actionlists/1
  # DELETE /actionlists/1.json
  def destroy
    @actionlist.destroy
    respond_to do |format|
      format.html { redirect_to actionlists_url, notice: 'Actionlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actionlist
      @actionlist = Actionlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actionlist_params
      params.require(:actionlist).permit(:name)
    end
end
