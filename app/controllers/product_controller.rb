class ProductController < ApplicationController
  def all
    @product = Product.all 
    render json: @product
  end

  def stocked
    @product = Product.where('inventory_count > ?', 0)
    render json: @product
  end
end
