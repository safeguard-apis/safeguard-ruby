require 'net/http'
require 'open-uri'
require 'json'
require 'httpclient'
module Safeguard
  class API

    def self.is_valid?(params)
      token = params[:token]
      email = params[:email]
      type = params[:token_type]
      parsed_response = get "check_token_password?token=#{token}&email=#{email}&token_type=#{type}"
      return true if parsed_response['status'] == 200
      return false
    end

  private
    def self.get uri
      begin
        url = "#{Safeguard.api_uri}/#{uri}&api_key=#{Safeguard.api_key}"
        http = HTTPClient.new
        response = http.get(url)
        parsed_response = parse_response response.body
      rescue
        parsed_response = {:status => 500}
      end
      parsed_response
    end

    def self.parse_response response
      JSON.parse response
    end
  end
end
