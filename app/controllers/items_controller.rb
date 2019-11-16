class ItemsController < ApplicationController
  def index
    @items = Product.all
  rescue => e
    flash[:alert] = e.message
    redirect_to :back
  end

  def create
    Product.create(item_params)

    redirect_to :back
    rescue => e
      flash[:alert] = e.message
      redirect_to :back
  end

  private

  def item_params
    {
      name: params['name'],
      description: params['description']
    }
  end
end