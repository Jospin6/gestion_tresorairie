class AutresDepensesController < ApplicationController
  before_action :set_autres_depense, only: %i[ show edit update destroy ]

  # GET /autres_depenses or /autres_depenses.json
  def index
    @autres_depenses = AutresDepense.all
  end

  # GET /autres_depenses/1 or /autres_depenses/1.json
  def show
  end

  # GET /autres_depenses/new
  def new
    @autres_depense = AutresDepense.new
    @montant_apport_usd = HistoriqueApport.where(devise: "USD").sum(:montant_recu)
    @montant_apport_fc = HistoriqueApport.where(devise: "FC").sum(:montant_recu)
    @depenses_usd = AutresDepense.where(devise: "USD").sum(:montant)
    @depenses_fc = AutresDepense.where(devise: "FC").sum(:montant)
  end

  # GET /autres_depenses/1/edit
  def edit
  end

  # POST /autres_depenses or /autres_depenses.json
  def create
    @autres_depense = AutresDepense.new(autres_depense_params)
    @montant_apport_usd = HistoriqueApport.where(devise: "USD").sum(:montant_recu)
    @montant_apport_fc = HistoriqueApport.where(devise: "FC").sum(:montant_recu)
    if @autres_depense.devise == "USD"
      if @autres_depense.montant < @montant_apport_usd 
        @autres_depense.save
        redirect_to @autres_depense, notice: "Autres depense was successfully created."
      else
        redirect_to @autres_depense, alert: "Le montant que vous voulez retirer est superieur au montant se trouvant dans le caisse dollars."
      end
    elsif @autres_depense.devise == "FC"
      if @autres_depense.montant < @montant_apport_fc 
        @autres_depense.save
        redirect_to @autres_depense, notice: "Autres depense was successfully created."
      else
        redirect_to @autres_depense, alert: "Le montant que vous voulez retirer est superieur au montant se trouvant dans le caisse fc."
      end
    end
  end

  # PATCH/PUT /autres_depenses/1 or /autres_depenses/1.json
  def update
    respond_to do |format|
      if @autres_depense.update(autres_depense_params)
        format.html { redirect_to @autres_depense, notice: "Autres depense was successfully updated." }
        format.json { render :show, status: :ok, location: @autres_depense }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @autres_depense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autres_depenses/1 or /autres_depenses/1.json
  def destroy
    @autres_depense.destroy

    respond_to do |format|
      format.html { redirect_to autres_depenses_path, status: :see_other, notice: "Autres depense was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autres_depense
      @autres_depense = AutresDepense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autres_depense_params
      params.require(:autres_depense).permit(:titre, :montant, :description, :date_jour, :devise)
    end
end
