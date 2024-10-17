class ProjetsController < ApplicationController
  before_action :set_projet, only: %i[ show edit update destroy ]

  # GET /projets or /projets.json
  def index
    @projets = Projet.all
  end

  # GET /projets/1 or /projets/1.json
  def show
    @projet = Projet.includes(financements: :partenaire).find(params[:id]) 
    @activite = @projet.activites.build
    @financement = @projet.financements.build
    @financements = @projet.financements.select { |financement| financement.partenaire.present? }

    @nbr_activite = @projet.activites.count
    @budget = @projet.financements.sum(:montant)
    @nbr_partenaires =  @projet.financements.joins(:partenaire).count
  end

  # GET /projets/new
  def new
    @projet = Projet.new
  end

  # GET /projets/1/edit
  def edit
  end

  # POST /projets or /projets.json
  def create
    @projet = Projet.new(projet_params)

    respond_to do |format|
      if @projet.save
        format.html { redirect_to @projet, notice: "Projet was successfully created." }
        format.json { render :show, status: :created, location: @projet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @projet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projets/1 or /projets/1.json
  def update
    respond_to do |format|
      if @projet.update(projet_params)
        format.html { redirect_to @projet, notice: "Projet was successfully updated." }
        format.json { render :show, status: :ok, location: @projet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @projet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projets/1 or /projets/1.json
  def destroy
    @projet.destroy

    respond_to do |format|
      format.html { redirect_to projets_path, status: :see_other, notice: "Projet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projet
      @projet = Projet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def projet_params
      params.require(:projet).permit(:titre, :description, :date_debut, :date_fin)
    end
end
