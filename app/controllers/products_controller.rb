class ProductsController < ApplicationController
   skip_before_action :authenticate_user!
  def index
    #@user = User.find(params[:user_id])
    @products = Product.all
  end

  def new
    @user = User.find(params[:user_id])
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @user = User.find(params[:user_id])
    @product.user = @user
    if @product.save
      redirect_to user_products_path
    else
      render :new
    end

    # def update
    #   @product = Product.find(params[:id])
      # if @product.update(product_params)
      #   redirect_to user_products_path
      # else
      #   render :edit
      # end
    # end
  end

  private

  def product_params
    params.require(:product).permit(:name, :size, :prices, :user_id)
  end
end
