
When /^answering a new phone call$/ do
  post '/new'
end

Then /^I am sent to the (.*) menu$/ do |m|
  last_response.should be_redirected_to "/#{m}"
end

