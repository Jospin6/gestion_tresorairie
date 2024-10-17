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
  end

  # GET /autres_depenses/1/edit
  def edit
  end

  # POST /autres_depenses or /autres_depenses.json
  def create
    @autres_depense = AutresDepense.new(autres_depense_params)

    respond_to do |format|
      if @autres_depense.save
        format.html { redirect_to @autres_depense, notice: "Autres depense was successfully created." }
        format.json { render :show, status: :created, location: @autres_depense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @autres_depense.errors, status: :unprocessable_entity }
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
