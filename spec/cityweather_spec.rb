require 'spec_helper'

describe CityWeather do

  context "Requesting weather for a city by code should work correctly" do

    before(:all) do
      @weather_service = WeatherApp.new.city_weather_service
      @cityID = 14256
      @weather_service.get_city_weather_data(@cityID)
    end

    it "should return a city name" do
      expect(@weather_service.get_city_name).to be_kind_of String
    end

    it "should return the city ID fed to the method" do
      expect(@weather_service.get_city_id).to eq @cityID
    end

    it "should return a coordinates hash" do
      expect(@weather_service.get_city_coordinates).to be_kind_of Hash
    end

    it "should return a longitude float" do
      expect(@weather_service.get_city_longitude).to be_kind_of Float
    end

    it "should return a latitude float" do
      expect(@weather_service.get_city_latitude).to be_kind_of Float
    end

    it "should return a weather array" do
      expect(@weather_service.get_city_weather).to be_kind_of Array
    end

    it "should return an id inside the weather array" do
      expect(@weather_service.get_city_weather_id).to be_kind_of Integer
    end

    it "should return a main weather string" do
      expect(@weather_service.get_city_weather_main).to be_kind_of String
    end

    it "should return a weather description" do
      expect(@weather_service.get_city_weather_description).to be_kind_of String
    end

    it "should return a base parameter as a string" do
      expect(@weather_service.get_city_base_parameter).to be_kind_of String
    end

    it "should return a main hash" do
      expect(@weather_service.get_city_main_hash).to be_kind_of Hash
    end

    it "should return a main pressure" do
      expect(@weather_service.get_city_main_pressure).to be_kind_of(Float).or be_kind_of Integer
    end

    it "should return a main humidity" do
      expect(@weather_service.get_city_main_humidity).to be_kind_of Integer
    end

    it "should return a main temperature" do
      expect(@weather_service.get_city_main_temp).to be_kind_of Float
    end

    it "should return a main temperature minimum" do
      expect(@weather_service.get_city_main_temp_min).to be_kind_of Float
    end

    it "should return a main temperature maximum" do
      expect(@weather_service.get_city_main_temp_max).to be_kind_of Float
    end

    it "should return a visibility integer" do
      expect(@weather_service.get_city_visibility).to be_kind_of Integer
    end

    it "should return a wind hash" do
      expect(@weather_service.get_city_wind_hash).to be_kind_of Hash
    end

    it "should return a wind speed integer" do
      expect(@weather_service.get_city_wind_speed).to be_kind_of Float
    end

    it "should return a wind degree" do
      expect(@weather_service.get_city_wind_deg).to be_kind_of Integer
    end

    it "should return a clouds hash" do
      expect(@weather_service.get_city_clouds_hash).to be_kind_of Hash
    end

    it "should return a clouds percentage value as an integer" do
      expect(@weather_service.get_city_clouds_percentage).to be_kind_of Integer
    end

    it "should return the date and time of encoding in unix format as an integer" do
      expect(@weather_service.get_city_datetime).to be_kind_of Integer
    end

    it "should return a sys hash" do
      expect(@weather_service.get_city_sys_hash).to be_kind_of Hash
    end

    it "should return a country code inside the sys hash" do
      expect(@weather_service.get_city_sys_country_code).to be_kind_of String
    end

    it "sys country code should be 2 letters long" do
      expect(@weather_service.get_city_sys_country_code.length).to eq 2
    end

  end
end
