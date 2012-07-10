
require './app'
require 'webmachine/adapters/rack'
require 'rack/test'

module AppHelpers
  include Rack::Test::Methods

  def app
    MyApp.adapter
  end
end


MyApp.configure do |cfg|
  cfg.adapter = :Rack
end

World(AppHelpers)
