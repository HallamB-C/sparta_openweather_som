require 'httparty'
require 'json'

class CityWeather
  include HTTParty

  attr_accessor :single_postcode_data

  base_uri 'http://api.openweathermap.org'

  def get_city_weather_data(city_code)
    @city_weather = JSON.parse(self.class.get("/data/2.5/weather?id=#{city_code}&APPID=8e8971bff65a4c73cf2e23345639ab97").body)
  end

  def get_city_id
    @city_weather["id"]
  end

  def get_city_name
    @city_weather["name"]
  end

  def get_city_coordinates
    @city_weather["coord"]
  end

  def get_city_longitude
    @city_weather["coord"]["lon"]
  end

  def get_city_latitude
    @city_weather["coord"]["lat"]
  end

  def get_city_weather
    @city_weather["weather"]
  end

  def get_city_weather_id
    @city_weather["weather"][0]["id"]
  end

  def get_city_weather_main
    @city_weather["weather"][0]["main"]
  end

  def get_city_weather_description
    @city_weather["weather"][0]["description"]
  end

  def get_city_base_parameter
    @city_weather["base"]
  end

  def get_city_main_hash
    @city_weather["main"]
  end

  def get_city_main_pressure
    @city_weather["main"]["pressure"]
  end

  def get_city_main_humidity
    @city_weather["main"]["humidity"]
  end

  def get_city_main_temp
    @city_weather["main"]["temp"]
  end

  def get_city_main_temp_min
    @city_weather["main"]["temp_min"]
  end

  def get_city_main_temp_max
    @city_weather["main"]["temp_max"]
  end

  def get_city_visibility
    @city_weather["visibility"]
  end

  def get_city_wind_hash
    @city_weather["wind"]
  end

  def get_city_wind_speed
    @city_weather["wind"]["speed"]
  end

  def get_city_wind_deg
    @city_weather["wind"]["deg"]
  end

  def get_city_clouds_hash
    @city_weather["clouds"]
  end

  def get_city_clouds_percentage
    @city_weather["clouds"]["all"]
  end

  def get_city_datetime
    @city_weather["dt"]
  end

  def get_city_sys_hash
    @city_weather["sys"]
  end

end

cw = CityWeather.new
p cw.get_city_weather_data(14256)
p cw.get_city_name
p cw.get_city_coordinates
p cw.get_city_longitude
p cw.get_city_latitude
p cw.get_city_weather_id
