class FinancementsController < ApplicationController
  before_action :set_financement, only: %i[ show edit update destroy ]

  # GET /financements or /financements.json
  def index
    @financements = Financement.all
  end

  # GET /financements/1 or /financements/1.json
  def show
  end

  # GET /financements/new
  def new
    @financement = Financement.new
  end

  # GET /financements/1/edit
  def edit
  end

  # POST /financements or /financements.json
  def create
    @financement = Financement.new(financement_params)

    respond_to do |format|
      if @financement.save
        format.html { redirect_to @financement, notice: "Financement was successfully created." }
        format.json { render :show, status: :created, location: @financement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @financement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financements/1 or /financements/1.json
  def update
    respond_to do |format|
      if @financement.update(financement_params)
        format.html { redirect_to @financement, notice: "Financement was successfully updated." }
        format.json { render :show, status: :ok, location: @financement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @financement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financements/1 or /financements/1.json
  def destroy
    @financement.destroy

    respond_to do |format|
      format.html { redirect_to financements_path, status: :see_other, notice: "Financement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financement
      @financement = Financement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def financement_params
      params.require(:financement).permit(:partenaire_id, :projet_id, :montant, :num_bordereau, :banque)
    end
end
