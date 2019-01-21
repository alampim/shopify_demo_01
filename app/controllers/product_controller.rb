class ProductController < ApplicationController
  def all
    @product = Product.all 
    render json: @product
  end

  def stocked
    @product = Product.where('inventory_count > ?', 0)
    render json: @product
  end

  def purchase
    @product = Product.find(params[:id])
    if @product.inventory_count >= 1
      @product.update_columns(inventory_count: @product.inventory_count - 1)
      render json: { status: "OK" }
    else
      render json: { error: "error" }, status: :failed
    end
  end
end
