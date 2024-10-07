class EmployesController < ApplicationController
  before_action :set_employe, only: %i[ show edit update destroy ]

  # GET /employes or /employes.json
  def index
    @employes = Employe.all
  end

  # GET /employes/1 or /employes/1.json
  def show
  end

  # GET /employes/new
  def new
    @employe = Employe.new
  end

  # GET /employes/1/edit
  def edit
  end

  # POST /employes or /employes.json
  def create
    @employe = Employe.new(employe_params)

    respond_to do |format|
      if @employe.save
        format.html { redirect_to @employe, notice: "Employe was successfully created." }
        format.json { render :show, status: :created, location: @employe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employes/1 or /employes/1.json
  def update
    respond_to do |format|
      if @employe.update(employe_params)
        format.html { redirect_to @employe, notice: "Employe was successfully updated." }
        format.json { render :show, status: :ok, location: @employe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employes/1 or /employes/1.json
  def destroy
    @employe.destroy

    respond_to do |format|
      format.html { redirect_to employes_path, status: :see_other, notice: "Employe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employe
      @employe = Employe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employe_params
      params.require(:employe).permit(:nom, :post_nom, :contact, :mail, :adresses)
    end
end
