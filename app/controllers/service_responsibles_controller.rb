class ServiceResponsiblesController < ApplicationController
  before_action :set_service_responsible, only: %i[ show edit update destroy ]

  # GET /service_responsibles or /service_responsibles.json
  def index
    @service_responsibles = ServiceResponsible.all
  end

  # GET /service_responsibles/1 or /service_responsibles/1.json
  def show
  end

  # GET /service_responsibles/new
  def new
    @service_responsible = ServiceResponsible.new
  end

  # GET /service_responsibles/1/edit
  def edit
  end

  # POST /service_responsibles or /service_responsibles.json
  def create
    @service_responsible = ServiceResponsible.new(service_responsible_params)

    respond_to do |format|
      if @service_responsible.save
        format.html { redirect_to @service_responsible, notice: "Service responsible was successfully created." }
        format.json { render :show, status: :created, location: @service_responsible }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_responsible.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_responsibles/1 or /service_responsibles/1.json
  def update
    respond_to do |format|
      if @service_responsible.update(service_responsible_params)
        format.html { redirect_to @service_responsible, notice: "Service responsible was successfully updated." }
        format.json { render :show, status: :ok, location: @service_responsible }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_responsible.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_responsibles/1 or /service_responsibles/1.json
  def destroy
    @service_responsible.destroy!

    respond_to do |format|
      format.html { redirect_to service_responsibles_path, status: :see_other, notice: "Service responsible was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_responsible
      @service_responsible = ServiceResponsible.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_responsible_params
      params.require(:service_responsible).permit(:daily_report_id, :responsible_id, :responsible_function, :authorization)
    end
end
