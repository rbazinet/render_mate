require "render_mate/version"
require "httparty"

module RenderMate
  include HTTParty
  base_uri 'http://rendermate.com'
  
  def self.render(api_key, url)

    options = { 
      :body => { 
        :api_key => api_key, 
        :url => url 
      } 
    }

    post("/api/v1/render_page", options).body
  end
  
end
