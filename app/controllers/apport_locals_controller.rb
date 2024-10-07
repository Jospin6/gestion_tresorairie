class ApportLocalsController < ApplicationController
  before_action :set_apport_local, only: %i[ show edit update destroy ]

  # GET /apport_locals or /apport_locals.json
  def index
    @apport_locals = ApportLocal.all
  end

  # GET /apport_locals/1 or /apport_locals/1.json
  def show
  end

  # GET /apport_locals/new
  def new
    @apport_local = ApportLocal.new
  end

  # GET /apport_locals/1/edit
  def edit
  end

  # POST /apport_locals or /apport_locals.json
  def create
    @apport_local = ApportLocal.new(apport_local_params)

    respond_to do |format|
      if @apport_local.save
        format.html { redirect_to @apport_local, notice: "Apport local was successfully created." }
        format.json { render :show, status: :created, location: @apport_local }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apport_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apport_locals/1 or /apport_locals/1.json
  def update
    respond_to do |format|
      if @apport_local.update(apport_local_params)
        format.html { redirect_to @apport_local, notice: "Apport local was successfully updated." }
        format.json { render :show, status: :ok, location: @apport_local }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apport_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apport_locals/1 or /apport_locals/1.json
  def destroy
    @apport_local.destroy

    respond_to do |format|
      format.html { redirect_to apport_locals_path, status: :see_other, notice: "Apport local was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apport_local
      @apport_local = ApportLocal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apport_local_params
      params.require(:apport_local).permit(:montant)
    end
end
