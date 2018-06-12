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

  def get_city_name_from_code code
    @json.each do |item|
      return item["name"] if item["id"] == code
    end
  end

end

bob = CityGenerator.new
# bob.get_yml
# bob.get_json
p bob.get_random_city_code
p dog = bob.get_random_city_code
p bob.get_city_name_from_code(dog)
