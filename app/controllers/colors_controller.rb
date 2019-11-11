class ColorsController < ApplicationController
  def index
    @colors = Color.all
  rescue => e
    render json: { message: e.message }, status: :not_found
  end

  def create
    Color.create(name: params['name'])

    redirect_to :back
    rescue => e
      render json: { message: e.message }, status: :unprocessable_entity
  end
end