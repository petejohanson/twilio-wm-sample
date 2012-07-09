
require 'webmachine'
require 'webmachine/adapters/rack'
require 'resources'

MyApp = Webmachine::Application.new do |app|
  app.routes do
    add ['new'], NewCallResource
    add ['intro'], IntroResource
    add ['address'], AddressResource
    add ['hours'], HoursResource
  end
end
