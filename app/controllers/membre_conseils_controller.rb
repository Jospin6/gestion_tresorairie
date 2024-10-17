class MembreConseilsController < ApplicationController
  before_action :set_membre_conseil, only: %i[ show edit update destroy ]

  # GET /membre_conseils or /membre_conseils.json
  def index
    @membre_conseils = MembreConseil.all
  end

  # GET /membre_conseils/1 or /membre_conseils/1.json
  def show
    @membre_conseil = MembreConseil.find(params[:id])
    @montant_apports_usd = @membre_conseil.historique_apports.where(devise: "USD").sum(:montant_recu)
    @montant_apports_fc = @membre_conseil.historique_apports.where(devise: "FC").sum(:montant_recu)
  end

  # GET /membre_conseils/new
  def new
    @membre_conseil = MembreConseil.new
  end

  # GET /membre_conseils/1/edit
  def edit
  end

  # POST /membre_conseils or /membre_conseils.json
  def create
    @membre_conseil = MembreConseil.new(membre_conseil_params)

    respond_to do |format|
      if @membre_conseil.save
        format.html { redirect_to @membre_conseil, notice: "Membre conseil was successfully created." }
        format.json { render :show, status: :created, location: @membre_conseil }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @membre_conseil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /membre_conseils/1 or /membre_conseils/1.json
  def update
    respond_to do |format|
      if @membre_conseil.update(membre_conseil_params)
        format.html { redirect_to @membre_conseil, notice: "Membre conseil was successfully updated." }
        format.json { render :show, status: :ok, location: @membre_conseil }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @membre_conseil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /membre_conseils/1 or /membre_conseils/1.json
  def destroy
    @membre_conseil.destroy

    respond_to do |format|
      format.html { redirect_to membre_conseils_path, status: :see_other, notice: "Membre conseil was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membre_conseil
      @membre_conseil = MembreConseil.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def membre_conseil_params
      params.require(:membre_conseil).permit(:nom, :post_nom, :contact, :mail, :adresses)
    end
end
