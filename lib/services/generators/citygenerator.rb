require 'yaml'
require 'json'

class CityGenerator

  def initialize
    @yaml = YAML.load_file('lib/services/generators/city_id.yml')
    json_to_parse = File.read('lib/services/generators/city_list.json')
    @json = JSON.parse(json_to_parse)
  end

  def get_yml
    @yaml
  end

  def get_json
    @json
  end

  def get_random_city_code
    @yaml.sample
  end

  def get_random_city_from_code
    code = get_random_city_code
    @json.each do |item|
      return item if item["id"] == code
    end
  end

  def get_random_city_name_from_code
    code = get_random_city_code
    @json.each do |item|
      return item["name"] if item["id"] == code
    end
  end

  def get_random_city_coords_from_code
    code = get_random_city_code
    @json.each do |item|
      return item["coord"] if item["id"] == code
    end
  end

end
