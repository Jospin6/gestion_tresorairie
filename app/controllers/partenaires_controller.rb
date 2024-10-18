class PartenairesController < ApplicationController
  before_action :set_partenaire, only: %i[ show edit update destroy ]

  # GET /partenaires or /partenaires.json
  def index
    @partenaires = Partenaire.all
  end

  # GET /partenaires/1 or /partenaires/1.json
  def show
    @partenaire = Partenaire.find(params[:id]) 
    @projets_finances = @partenaire.financements.joins(:projet).select('financements.montant, projets.titre, projets.description, projets.date_debut, projets.date_fin')
  
    @fond_investi = @partenaire.financements.sum(:montant)
    @nbr_projets = @partenaire.financements.joins(:projet).count
  
  end

  # GET /partenaires/new
  def new
    @partenaire = Partenaire.new
  end

  # GET /partenaires/1/edit
  def edit
  end

  # POST /partenaires or /partenaires.json
  def create
    @partenaire = Partenaire.new(partenaire_params)

    respond_to do |format|
      if @partenaire.save
        format.html { redirect_to @partenaire, notice: "Partenaire was successfully created." }
        format.json { render :show, status: :created, location: @partenaire }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @partenaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partenaires/1 or /partenaires/1.json
  def update
    respond_to do |format|
      if @partenaire.update(partenaire_params)
        format.html { redirect_to @partenaire, notice: "Partenaire was successfully updated." }
        format.json { render :show, status: :ok, location: @partenaire }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @partenaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partenaires/1 or /partenaires/1.json
  def destroy
    @partenaire.destroy

    respond_to do |format|
      format.html { redirect_to partenaires_path, status: :see_other, notice: "Partenaire was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partenaire
      @partenaire = Partenaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def partenaire_params
      params.require(:partenaire).permit(:nom, :contact, :mail, :adresse, :type_partenaire, :photo)
    end
end
