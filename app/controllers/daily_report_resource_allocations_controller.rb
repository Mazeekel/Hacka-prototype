class DailyReportResourceAllocationsController < ApplicationController
  before_action :set_daily_report_resource_allocation, only: %i[ show edit update destroy ]

  # GET /daily_report_resource_allocations or /daily_report_resource_allocations.json
  def index
    @daily_report_resource_allocations = DailyReportResourceAllocation.all
  end

  # GET /daily_report_resource_allocations/1 or /daily_report_resource_allocations/1.json
  def show
  end

  # GET /daily_report_resource_allocations/new
  def new
    @daily_report_resource_allocation = DailyReportResourceAllocation.new
  end

  # GET /daily_report_resource_allocations/1/edit
  def edit
  end

  # POST /daily_report_resource_allocations or /daily_report_resource_allocations.json
  def create
    @daily_report_resource_allocation = DailyReportResourceAllocation.new(daily_report_resource_allocation_params)

    respond_to do |format|
      if @daily_report_resource_allocation.save
        format.html { redirect_to @daily_report_resource_allocation, notice: "Daily report resource allocation was successfully created." }
        format.json { render :show, status: :created, location: @daily_report_resource_allocation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_report_resource_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_report_resource_allocations/1 or /daily_report_resource_allocations/1.json
  def update
    respond_to do |format|
      if @daily_report_resource_allocation.update(daily_report_resource_allocation_params)
        format.html { redirect_to @daily_report_resource_allocation, notice: "Daily report resource allocation was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_report_resource_allocation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_report_resource_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_report_resource_allocations/1 or /daily_report_resource_allocations/1.json
  def destroy
    @daily_report_resource_allocation.destroy!

    respond_to do |format|
      format.html { redirect_to daily_report_resource_allocations_path, status: :see_other, notice: "Daily report resource allocation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_report_resource_allocation
      @daily_report_resource_allocation = DailyReportResourceAllocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_report_resource_allocation_params
      params.require(:daily_report_resource_allocation).permit(:stocking_id, :daily_report_id, :quantity, :unit)
    end
end
