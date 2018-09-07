class ForecastController < ApplicationController
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
    render template: "forecast/show"
  end
end
