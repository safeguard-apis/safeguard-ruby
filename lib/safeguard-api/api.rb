require 'net/http'
module Safeguard
  class API

    def self.is_valid?(params)
      token = params[:token] 
      user_email = params[:user_email]
      parsed_response = get "check_token_password?token=#{token}&user_email=#{user_email}"
      return true if parsed_response[:status] == 200
      return false
    end

  private 
    def get uri
      url = "#{Safeguard.api_uri}/#{uri}"
      response = Net::HTTP.get(URI(url))
      parsed_response = parse_response response
    end

    def parse_response response
      JSON.parse response 
    end
  end
end
