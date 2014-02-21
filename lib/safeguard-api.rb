$:.unshift File.expand_path("..", __FILE__)
module Safeguard
  class << self
    def api_key=(key)
      @api_key = key
    end

    def api_key
      @api_key
    end

    def api_uri=(uri)
      @api_uri = uri
    end

    def api_uri
      @api_uri
    end
  end
end

require 'safeguard-api/api'
