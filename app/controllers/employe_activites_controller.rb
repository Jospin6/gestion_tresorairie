class EmployeActivitesController < ApplicationController
  before_action :set_employe_activite, only: %i[ show edit update destroy ]

  # GET /employe_activites or /employe_activites.json
  def index
    @employe_activites = EmployeActivite.all
  end

  # GET /employe_activites/1 or /employe_activites/1.json
  def show
  end

  # GET /employe_activites/new
  def new
    @employe_activite = EmployeActivite.new
  end

  # GET /employe_activites/1/edit
  def edit
  end

  # POST /employe_activites or /employe_activites.json
  def create
    @employe_activite = EmployeActivite.new(employe_activite_params)

    respond_to do |format|
      if @employe_activite.save
        format.html { redirect_to @employe_activite, notice: "Employe activite was successfully created." }
        format.json { render :show, status: :created, location: @employe_activite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employe_activite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employe_activites/1 or /employe_activites/1.json
  def update
    respond_to do |format|
      if @employe_activite.update(employe_activite_params)
        format.html { redirect_to @employe_activite, notice: "Employe activite was successfully updated." }
        format.json { render :show, status: :ok, location: @employe_activite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employe_activite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employe_activites/1 or /employe_activites/1.json
  def destroy
    @employe_activite.destroy

    respond_to do |format|
      format.html { redirect_to employe_activites_path, status: :see_other, notice: "Employe activite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employe_activite
      @employe_activite = EmployeActivite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employe_activite_params
      params.require(:employe_activite).permit(:employe_id, :activite_id)
    end
end
