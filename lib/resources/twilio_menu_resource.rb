
require 'webmachine'
require 'twilio-ruby'

class TwilioMenuResource < Webmachine::Resource
  def content_types_provided
    [['application/xml', :to_xml]]
  end

  def allowed_methods
    ['OPTIONS', 'GET', 'POST']
  end

  def post_form_data
    @post_form_data ||= Hash[URI.decode_www_form(request.body.to_s)]
  end

  def digits
    @digits ||= post_form_data['Digits'].to_i
  end
end
