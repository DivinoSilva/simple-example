class SizesController < ApplicationController
  def index
    @sizes = Size.all.order(:id)
  rescue => e
    render json: { message: e.message }, status: :not_found
  end

  def create
    Size.create(name: params['name'])

    redirect_to :back
    rescue => e
      flash[:alert] = e.message
      redirect_to :back
  end
end