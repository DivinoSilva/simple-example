class ColorsController < ApplicationController
  def index
    @colors = Color.all
  rescue => e
    flash[:alert] = e.message
    redirect_to :back
  end

  def create
    Color.create(name: params['name'])

    redirect_to :back
    rescue => e
      flash[:alert] = e.message
      redirect_to :back
  end
end