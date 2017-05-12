class SellersController < ApplicationController
  before_action :set_seller, only: [:show, :edit, :update, :destroy]

  def index
    @sellers = Seller.all
  end

  def show
  end

  def new
    @seller = Seller.new
  end

  def edit
  end

  def create
    @seller = Seller.new(seller_params)

    respond_to do |format|
      if @seller.save
        format.html { redirect_to @seller, notice: 'Seller was successfully created.' }
        format.json { render :show, status: :created, location: @seller }
      else
        format.html { render :new }
        format.json { render json: @seller.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @seller.update(seller_params)
        format.html { redirect_to @seller, notice: 'Seller was successfully updated.' }
        format.json { render :show, status: :ok, location: @seller }
      else
        format.html { render :edit }
        format.json { render json: @seller.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @seller.destroy
    respond_to do |format|
      format.html { redirect_to sellers_url, notice: 'Seller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_seller
      @seller = Seller.find(params[:id])
    end

    def seller_params
      params.require(:seller).permit(:first_name, :middle_name, :last_name, :mobile_number, :address, :gender)
    end
end
