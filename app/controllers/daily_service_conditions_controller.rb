class DailyServiceConditionsController < ApplicationController
  before_action :set_daily_service_condition, only: %i[ show edit update destroy ]

  # GET /daily_service_conditions or /daily_service_conditions.json
  def index
    @daily_service_conditions = DailyServiceCondition.all
  end

  # GET /daily_service_conditions/1 or /daily_service_conditions/1.json
  def show
  end

  # GET /daily_service_conditions/new
  def new
    @daily_service_condition = DailyServiceCondition.new
  end

  # GET /daily_service_conditions/1/edit
  def edit
  end

  # POST /daily_service_conditions or /daily_service_conditions.json
  def create
    @daily_service_condition = DailyServiceCondition.new(daily_service_condition_params)

    respond_to do |format|
      if @daily_service_condition.save
        format.html { redirect_to @daily_service_condition, notice: "Daily service condition was successfully created." }
        format.json { render :show, status: :created, location: @daily_service_condition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_service_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_service_conditions/1 or /daily_service_conditions/1.json
  def update
    respond_to do |format|
      if @daily_service_condition.update(daily_service_condition_params)
        format.html { redirect_to @daily_service_condition, notice: "Daily service condition was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_service_condition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_service_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_service_conditions/1 or /daily_service_conditions/1.json
  def destroy
    @daily_service_condition.destroy!

    respond_to do |format|
      format.html { redirect_to daily_service_conditions_path, status: :see_other, notice: "Daily service condition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_service_condition
      @daily_service_condition = DailyServiceCondition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_service_condition_params
      params.require(:daily_service_condition).permit(:daily_report_id, :condition)
    end
end
