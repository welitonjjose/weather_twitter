class WeatherController < ApplicationController
  before_action :validate_params

  def now
    weather_forecast = WeatherForecastService.new(params)
    
    render json: weather_forecast.call
  end

  private

  def validate_params
    raise TypeError, 'City required *' unless !params[:city].nil?
    raise TypeError, 'State required *' unless !params[:state].nil?
  end
end
