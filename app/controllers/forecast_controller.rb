class ForecastController < ApplicationController
  def index
  end

  def new
    @forecast = Forecast.new
  end

  def create
    @forecast = Forecast.new(params[:forecast])

    @forecast.save
  end
end
