class VpostsController < ApplicationController
  before_action :set_vpost, only: [:show, :edit, :update, :destroy]

  # GET /vposts
  # GET /vposts.json
  def index
    @vposts = Vpost.all
  end

  # GET /vposts/1
  # GET /vposts/1.json
  def show
  end

  # GET /vposts/new
  def new
    @vpost = Vpost.new
  end

  # GET /vposts/1/edit
  def edit
  end

  # POST /vposts
  # POST /vposts.json
  def create
    @vpost = Vpost.new(vpost_params)

    respond_to do |format|
      if @vpost.save
        format.html { redirect_to @vpost, notice: 'Vpost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vpost }
      else
        format.html { render action: 'new' }
        format.json { render json: @vpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vposts/1
  # PATCH/PUT /vposts/1.json
  def update
    respond_to do |format|
      if @vpost.update(vpost_params)
        format.html { redirect_to @vpost, notice: 'Vpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vposts/1
  # DELETE /vposts/1.json
  def destroy
    @vpost.destroy
    respond_to do |format|
      format.html { redirect_to vposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vpost
      @vpost = Vpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vpost_params
      params.require(:vpost).permit(:identifier, :payload)
    end
end
