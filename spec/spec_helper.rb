require 'rspec'
require_relative '../lib/weatherapp'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
