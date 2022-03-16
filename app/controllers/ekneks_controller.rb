class EkneksController < ApplicationController
  before_action :set_eknek, only: %i[ show edit update destroy ]
  before_action :ensure_current_user
  # GET /ekneks or /ekneks.json
  def index
    @ekneks = current_user.ekneks
  end

  # GET /ekneks/1 or /ekneks/1.json
  def show
  end

  # GET /ekneks/new
  def new
    @eknek = Eknek.new
  end

  # GET /ekneks/1/edit
  def edit
  end

  # POST /ekneks or /ekneks.json
  def create
    @eknek = current_user.ekneks.new(eknek_params)

    respond_to do |format|
      if @eknek.save
        format.html { redirect_to eknek_url(@eknek), notice: "Eknek was successfully created." }
        format.json { render :show, status: :created, location: @eknek }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @eknek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ekneks/1 or /ekneks/1.json
  def update
    respond_to do |format|
      if @eknek.update(eknek_params)
        format.html { redirect_to eknek_url(@eknek), notice: "Eknek was successfully updated." }
        format.json { render :show, status: :ok, location: @eknek }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @eknek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ekneks/1 or /ekneks/1.json
  def destroy
    @eknek.destroy

    respond_to do |format|
      format.html { redirect_to ekneks_url, notice: "Eknek was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eknek
      @eknek = current_user.ekneks.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def eknek_params
      params.require(:eknek).permit(:title, :description, :file)
    end
end
