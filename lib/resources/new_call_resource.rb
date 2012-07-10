
require 'webmachine'

class NewCallResource < Webmachine::Resource
  def allowed_methods
    ['OPTIONS', 'POST']
  end

  def process_post
    response.redirect_to '/intro'
  end
end
