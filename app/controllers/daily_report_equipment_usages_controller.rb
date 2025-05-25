class DailyReportEquipmentUsagesController < ApplicationController
  before_action :set_daily_report_equipment_usage, only: %i[ show edit update destroy ]

  # GET /daily_report_equipment_usages or /daily_report_equipment_usages.json
  def index
    @daily_report_equipment_usages = DailyReportEquipmentUsage.all
  end

  # GET /daily_report_equipment_usages/1 or /daily_report_equipment_usages/1.json
  def show
  end

  # GET /daily_report_equipment_usages/new
  def new
    @daily_report_equipment_usage = DailyReportEquipmentUsage.new
  end

  # GET /daily_report_equipment_usages/1/edit
  def edit
  end

  # POST /daily_report_equipment_usages or /daily_report_equipment_usages.json
  def create
    @daily_report_equipment_usage = DailyReportEquipmentUsage.new(daily_report_equipment_usage_params)

    respond_to do |format|
      if @daily_report_equipment_usage.save
        format.html { redirect_to @daily_report_equipment_usage, notice: "Daily report equipment usage was successfully created." }
        format.json { render :show, status: :created, location: @daily_report_equipment_usage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_report_equipment_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_report_equipment_usages/1 or /daily_report_equipment_usages/1.json
  def update
    respond_to do |format|
      if @daily_report_equipment_usage.update(daily_report_equipment_usage_params)
        format.html { redirect_to @daily_report_equipment_usage, notice: "Daily report equipment usage was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_report_equipment_usage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_report_equipment_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_report_equipment_usages/1 or /daily_report_equipment_usages/1.json
  def destroy
    @daily_report_equipment_usage.destroy!

    respond_to do |format|
      format.html { redirect_to daily_report_equipment_usages_path, status: :see_other, notice: "Daily report equipment usage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_report_equipment_usage
      @daily_report_equipment_usage = DailyReportEquipmentUsage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_report_equipment_usage_params
      params.require(:daily_report_equipment_usage).permit(:daily_report_id, :responsible_id, :usage_time, :equipment)
    end
end
