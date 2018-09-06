class ForecastsController < ApplicationController
  def index
  end

  def show
    @forecast = Forecast.find(params[:forecast])
  end

  def new
    @forecast = Forecast.new
  end

  def create
    @forecast = Forecast.new(params[:forecast])

    @forecast.save
    redirect_to action: "index"
  end
end
