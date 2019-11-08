class ProductsController < ApplicationController
  def index
    @products = Product.all

    # @products_presenter = @products.map{ |p| ProductPresenter.new(p) }
  rescue => e
    render json: { message: e.message }, status: :not_found
  end

  def show
    @product = Product.find(params['id'])
  rescue => e
    render json: { message: e.message }, status: :not_found
  end

  def create
    Size.create(name: params['size'])

    head :ok and redirect_to :back
    rescue => e
      render json: { message: e.message }, status: :unprocessable_entity
  end
end