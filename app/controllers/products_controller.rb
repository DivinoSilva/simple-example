class ProductsController < ApplicationController
  def index
    @products = AvailableProduct.all

    @products_presenter = @products.map{ |p| ProductPresenter.new(p) }
  rescue => e
    flash[:alert] = e.message
    redirect_to :back
  end

  def show
    @product = Product.find(params['id'])
  rescue => e
    flash[:alert] = e.message
    redirect_to :back
  end

  def create
    product = ProductBuilder.new(product_params).build

    redirect_to :back if product.save!
    rescue => e
      flash[:alert] = e.message
      redirect_to :back
  end

  private
  
  def product_params
    {
      name: params[:name],
      description: params[:description],
      size_id: params[:size_id],
      color_id: params[:color_id]
    }
  end
end