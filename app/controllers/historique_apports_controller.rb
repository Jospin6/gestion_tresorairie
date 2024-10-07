class HistoriqueApportsController < ApplicationController
  before_action :set_historique_apport, only: %i[ show edit update destroy ]

  # GET /historique_apports or /historique_apports.json
  def index
    @historique_apports = HistoriqueApport.all
  end

  # GET /historique_apports/1 or /historique_apports/1.json
  def show
  end

  # GET /historique_apports/new
  def new
    @historique_apport = HistoriqueApport.new
  end

  # GET /historique_apports/1/edit
  def edit
  end

  # POST /historique_apports or /historique_apports.json
  def create
    @historique_apport = HistoriqueApport.new(historique_apport_params)

    respond_to do |format|
      if @historique_apport.save
        format.html { redirect_to @historique_apport, notice: "Historique apport was successfully created." }
        format.json { render :show, status: :created, location: @historique_apport }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historique_apport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historique_apports/1 or /historique_apports/1.json
  def update
    respond_to do |format|
      if @historique_apport.update(historique_apport_params)
        format.html { redirect_to @historique_apport, notice: "Historique apport was successfully updated." }
        format.json { render :show, status: :ok, location: @historique_apport }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historique_apport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historique_apports/1 or /historique_apports/1.json
  def destroy
    @historique_apport.destroy

    respond_to do |format|
      format.html { redirect_to historique_apports_path, status: :see_other, notice: "Historique apport was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historique_apport
      @historique_apport = HistoriqueApport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historique_apport_params
      params.require(:historique_apport).permit(:montant_recu, :membre_conseil_id, :date_jour)
    end
end
