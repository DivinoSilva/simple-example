class SizesController < ApplicationController
  def index
    @sizes = Size.all.order(:id)
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