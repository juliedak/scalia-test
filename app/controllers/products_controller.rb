class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @user = User.find(params [:user_id])
    @product = Product.new
  end

  def create

  end

  private


end
