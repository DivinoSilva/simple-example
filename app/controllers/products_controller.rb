class ProductsController < ApplicationController
  def index
    @products = AvailableProduct.all

    @products_presenter = @products.map{ |p| ProductPresenter.new(p) }
  rescue => e
    render json: { message: e.message }, status: :not_found
  end

  def show
    @product = Product.find(params['id'])
  rescue => e
    render json: { message: e.message }, status: :not_found
  end

  def create
    product = ProductBuilder.new(product_params).build

    redirect_to :back if product.save!
    rescue => e
      render json: { message: e.message }, status: :unprocessable_entity
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