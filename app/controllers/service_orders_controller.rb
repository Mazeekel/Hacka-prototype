class ServiceOrdersController < ApplicationController
  before_action :set_service_order, only: %i[ show edit update destroy ]

  # GET /service_orders or /service_orders.json
  def index
    @service_orders = ServiceOrder.all
  end

  # GET /service_orders/1 or /service_orders/1.json
  def show
  end

  # GET /service_orders/new
  def new
    @service_order = ServiceOrder.new
  end

  # GET /service_orders/1/edit
  def edit
  end

  # POST /service_orders or /service_orders.json
  def create
    @service_order = ServiceOrder.new(service_order_params)

    respond_to do |format|
      if @service_order.save
        format.html { redirect_to @service_order, notice: "Service order was successfully created." }
        format.json { render :show, status: :created, location: @service_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_orders/1 or /service_orders/1.json
  def update
    respond_to do |format|
      if @service_order.update(service_order_params)
        format.html { redirect_to @service_order, notice: "Service order was successfully updated." }
        format.json { render :show, status: :ok, location: @service_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_orders/1 or /service_orders/1.json
  def destroy
    @service_order.destroy!

    respond_to do |format|
      format.html { redirect_to service_orders_path, status: :see_other, notice: "Service order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_order
      @service_order = ServiceOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_order_params
      params.require(:service_order).permit(:requirement_id, :status, :type_of_service, :service_cost, :attendimment_feedback, :finished_at)
    end
end
