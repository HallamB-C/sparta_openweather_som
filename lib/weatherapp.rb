require_relative 'services/cityweather'
require_relative 'services/lonlatweather'

class WeatherApp

  def city_weather_service
    CityWeather.new
  end

  def lon_lat_weather_service
    LonLatWeather.new
  end

end
