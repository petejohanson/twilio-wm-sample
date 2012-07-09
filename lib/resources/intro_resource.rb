
require 'webmachine'
require 'twilio-ruby'

class IntroResource < TwilioMenuResource
  def to_xml
    Twilio::TwiML::Response.new do |r|
      r.Gather :numDigits => 1 do |g|
        g.Say 'Welcome to the Twiliodio Bar'
	g.Say 'For our address, press 1. For our hours, press 2.'
      end
    end.text
  end

  def process_post
    case digits
    when 1
      response.redirect_to '/address'
    when 2
      response.redirect_to '/hours'
    else
      response.redirect_to '/intro'
    end
  end
end
