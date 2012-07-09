
require 'webmachine'
require 'twilio-ruby'

class HoursResource < TwilioMenuResource
  def to_xml
    Twilio::TwiML::Response.new do |r|
      r.Gather :numDigits => 1 do |g|
        g.Say 'Our hours are from 9 to 5, Monday though Friday.'
	g.Say 'To repeat the hours, press 1. To go back, press 2.'
      end
    end.text
  end

  def process_post
    case digits
    when 1
      response.redirect_to '/hours'
    when 2
      response.redirect_to '/intro'
    end
  end
end
