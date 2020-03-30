class PricesController < ApplicationController
  skip_before_action :authenticate_user!
  # def index
  #   @product = Product.find(params[:product_id])
  #   @prices = Price.all
  # end

  def show
    @price = Price.find(params[:id])
  end

  def new
    @product = Product.find(params[:product_id])
    @price = Price.new
  end

  def create
    @price = Price.new(price_params)
    @product = Product.find(params[:product_id])
    @price.product = @product
    if @price.save
      redirect_to user_products_path
    else
      redirect_to new_user_product_path
    end
  end

      # def update
    #   @price = Price.find(params[:id])
      # if @price.update(product_params)
      #   redirect_to user_products_path
      # else
      #   redirect_to user_products_path
      # end
    # end

  private

  def price_params
    params.require(:price).permit(:currency, :value, :product_id)
  end
end
