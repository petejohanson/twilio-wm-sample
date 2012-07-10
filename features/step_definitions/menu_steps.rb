require 'rexml/document'

Given /^I am in the (.*) menu$/ do |menu|
  get "/#{menu}"
end

When /^answering a new phone call$/ do
  post '/new'
end

When /^entering the (.*) menu$/ do |menu|
  get "/#{menu}"
end

When /^I press (\d)$/ do |digit|
  post last_request.url, { :Digits => digit }
end

Then /^I am sent to the (.*) menu$/ do |menu|
  last_response.should be_redirected_to "/#{menu}"
end

Then /^I am prompted for a number$/ do
  doc = REXML::Document.new(last_response.body.to_s)
  REXML::XPath.first(doc, "/Response/Gather")
end

Then /^I hear the message '(.*)'$/ do |msg|
  doc = REXML::Document.new(last_response.body.to_s)
  REXML::XPath.first(doc, "//Say/text('#{msg}')")
end
