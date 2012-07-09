$: << File.expand_path("lib", File.dirname(__FILE__))
puts File.expand_path("lib", File.dirname(__FILE__))

require './app'
require 'webmachine/adapters/rack'

MyApp.configure do |cfg|
  cfg.adapter = :Rack
end

run MyApp.adapter
