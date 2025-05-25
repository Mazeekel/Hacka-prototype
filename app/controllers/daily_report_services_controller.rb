class DailyReportServicesController < ApplicationController
  before_action :set_daily_report_service, only: %i[ show edit update destroy ]

  # GET /daily_report_services or /daily_report_services.json
  def index
    @daily_report_services = DailyReportService.all
  end

  # GET /daily_report_services/1 or /daily_report_services/1.json
  def show
  end

  # GET /daily_report_services/new
  def new
    @daily_report_service = DailyReportService.new
  end

  # GET /daily_report_services/1/edit
  def edit
  end

  # POST /daily_report_services or /daily_report_services.json
  def create
    @daily_report_service = DailyReportService.new(daily_report_service_params)

    respond_to do |format|
      if @daily_report_service.save
        format.html { redirect_to @daily_report_service, notice: "Daily report service was successfully created." }
        format.json { render :show, status: :created, location: @daily_report_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_report_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_report_services/1 or /daily_report_services/1.json
  def update
    respond_to do |format|
      if @daily_report_service.update(daily_report_service_params)
        format.html { redirect_to @daily_report_service, notice: "Daily report service was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_report_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_report_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_report_services/1 or /daily_report_services/1.json
  def destroy
    @daily_report_service.destroy!

    respond_to do |format|
      format.html { redirect_to daily_report_services_path, status: :see_other, notice: "Daily report service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_report_service
      @daily_report_service = DailyReportService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_report_service_params
      params.require(:daily_report_service).permit(:daily_report_id, :area, :unit, :service_description)
    end
end
