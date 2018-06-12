require_relative 'services/cityweather'

class WeatherApp

  def city_weather_service
    CityWeather.new
  end


end
