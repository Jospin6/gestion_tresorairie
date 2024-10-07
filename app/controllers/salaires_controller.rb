class SalairesController < ApplicationController
  before_action :set_salaire, only: %i[ show edit update destroy ]

  # GET /salaires or /salaires.json
  def index
    @salaires = Salaire.all
  end

  # GET /salaires/1 or /salaires/1.json
  def show
  end

  # GET /salaires/new
  def new
    @salaire = Salaire.new
  end

  # GET /salaires/1/edit
  def edit
  end

  # POST /salaires or /salaires.json
  def create
    @salaire = Salaire.new(salaire_params)

    respond_to do |format|
      if @salaire.save
        format.html { redirect_to @salaire, notice: "Salaire was successfully created." }
        format.json { render :show, status: :created, location: @salaire }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @salaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salaires/1 or /salaires/1.json
  def update
    respond_to do |format|
      if @salaire.update(salaire_params)
        format.html { redirect_to @salaire, notice: "Salaire was successfully updated." }
        format.json { render :show, status: :ok, location: @salaire }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @salaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salaires/1 or /salaires/1.json
  def destroy
    @salaire.destroy

    respond_to do |format|
      format.html { redirect_to salaires_path, status: :see_other, notice: "Salaire was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salaire
      @salaire = Salaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def salaire_params
      params.require(:salaire).permit(:employe_id, :mois, :annee, :montant, :date_jour, :apport_local_id)
    end
end
