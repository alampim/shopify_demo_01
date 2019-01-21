class ProductController < ApplicationController
  def list
    @product = Product.all 
    render json: @product
  end
end
