require "test_helper"

class WeatherControllerTest < ActionDispatch::IntegrationTest
  
  test "should trueth" do 
    post weather_now_url, params: {
      city: "Santos",
      state: "SP"
    }
  end

  test "when city difference state" do 
    post weather_now_url, params: {
      city: "Santos",
      state: "AM"
    }
  end
end
