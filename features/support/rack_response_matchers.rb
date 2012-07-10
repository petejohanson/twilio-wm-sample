
require 'rspec/expectations'

RSpec::Matchers.define :be_redirected_to do |expected|
  match do |actual|
    actual.status == 303 and actual.headers['Location'] == expected
  end
end
