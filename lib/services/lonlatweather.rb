require 'httparty'
require 'json'

class LonLatWeather
  include HTTParty

  attr_accessor :city_weather

  base_uri 'http://api.openweathermap.org'

  def get_lonlat_weather_data latin, lonin
    @lonlat_weather = JSON.parse(self.class.get("/data/2.5/weather?lat=#{latin}&lon=#{lonin}&APPID=8e8971bff65a4c73cf2e23345639ab97").body)
  end

  def get_lonlat_id
    @lonlat_weather["id"]
  end

  def get_lonlat_coordinates
    @lonlat_weather["coord"]
  end

  def get_lonlat_weather
    @lonlat_weather["weather"]
  end

  def get_lonlat_weather_id
    @lonlat_weather["weather"][0]["id"]
  end

  def get_lonlat_weather_main
    @lonlat_weather["weather"][0]["main"]
  end

  def get_lonlat_weather_description
    @lonlat_weather["weather"][0]["description"]
  end

  def get_lonlat_base_parameter
    @lonlat_weather["base"]
  end

  def get_lonlat_main_hash
    @lonlat_weather["main"]
  end

  def get_lonlat_main_pressure
    @lonlat_weather["main"]["pressure"]
  end

  def get_lonlat_main_humidity
    @lonlat_weather["main"]["humidity"]
  end

  def get_lonlat_main_temp
    @lonlat_weather["main"]["temp"]
  end

  def get_lonlat_main_temp_min
    @lonlat_weather["main"]["temp_min"]
  end

  def get_lonlat_main_temp_max
    @lonlat_weather["main"]["temp_max"]
  end

  def get_lonlat_visibility
    @lonlat_weather["visibility"]
  end

  def get_lonlat_wind_hash
    @lonlat_weather["wind"]
  end

  def get_lonlat_wind_speed
    @lonlat_weather["wind"]["speed"]
  end

  def get_lonlat_wind_deg
    @lonlat_weather["wind"]["deg"]
  end

  def get_lonlat_clouds_hash
    @lonlat_weather["clouds"]
  end

  def get_lonlat_clouds_percentage
    @lonlat_weather["clouds"]["all"]
  end

  def get_lonlat_datetime
    @lonlat_weather["dt"]
  end

  def get_lonlat_sys_hash
    @lonlat_weather["sys"]
  end

  def get_lonlat_sys_country_code
    @lonlat_weather["sys"]["country"]
  end

end

ll = LonLatWeather.new
p ll.get_lonlat_weather_data(38.2,44.9)
p ll.get_lonlat_weather_id
