class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]
  before_action :login_check

  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.all
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
  end

  # GET /sales/new
  def new
    @sale = Sale.new
  end

  # GET /sales/1/edit
  def edit
  end

  # POST /sales
  # POST /sales.json
  def create
    Sale.transaction do
      @sale = Sale.create(sale_params)
      session[:cart].each do |item_id|
        SaleItem.create(sale_id: @sale.id, item_id: item_id)
        item = Item.find(item_id)
        item.status = 1
        item.save
      end if session[:cart]
    end
    session[:cart] = nil if @sale.id
    respond_to do |format|
      if @sale.id
        format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_cart
    if session[:cart].nil?
      session[:cart] = [params[:id]]
    else
      session[:cart].push(params[:id])
      session[:cart].uniq!
    end
    redirect_back(fallback_location: root_path)
  end

  def clear_cart
    session[:cart].clear
    redirect_back(fallback_location: root_path)
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:user_id, :address, :payment_amount, :lease_duration, :item_id, :phone_number)
    end

    def login_check
      if user_signed_in?

      else
        redirect_to signin_path
      end
    end
end
