class WeatherForecastService
  def initialize(args)
    @args = args
  end

  def call
    get_weather
    send_twitter
  end

  private

  def get_weather
    @args[:state] = @args[:state].upcase
    
    @weater_now = Bomtempo.weather_in(@args)
  end

  def send_twitter
    twitter = TwitterService.new
    twitter.send(@weater_now)
  end
end