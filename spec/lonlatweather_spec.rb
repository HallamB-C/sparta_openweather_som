require 'spec_helper'

describe LonLatWeather do

  context "Requesting weather for a city by lon and lat should work correctly" do

    before(:all) do
      @weather_service = WeatherApp.new.lon_lat_weather_service
      @randomcity = CityGenerator.new
      @citylon = @randomcity.get_random_city_coords_from_code["lon"]
      @citylat = @randomcity.get_random_city_coords_from_code["lat"]
      @data = @weather_service.get_lonlat_weather_data(@citylon,@citylat)
    end

    it "should return a hash" do
      expect(@data).to be_kind_of Hash
    end


  end

end
