require 'rspec'
require_relative '../lib/weatherapp'
require_relative '../lib/services/generators/citygenerator'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
