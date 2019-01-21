class CartController < ApplicationController
  def list
    @cart = Cart.all 
    render json: @cart
  end

  def products
    @cart = Cart.find(params[:id])
    render json: @cart.products
  end















  
end
