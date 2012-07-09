
require 'webmachine'
require 'twilio-ruby'

class AddressResource < TwilioMenuResource
  def to_xml
    Twilio::TwiML::Response.new do |r|
      r.Gather :numDigits => 1 do |g|
        g.Say 'Our address is One Two Three Fourth St.'
	g.Say 'To repeat the address, press 1. To go back, press 2.'
      end
    end.text
  end

  def process_post
    case digits
    when 1
      response.redirect_to '/address'
    when 2
      response.redirect_to '/intro'
    end
  end
end
