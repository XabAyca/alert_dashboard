require_relative "notion/client"
require_relative "notion/configuration"

require_relative "notion/V1/users"

# Notion lib
module Notion
  class << self
    def get(uri)
      Client.get(uri)
    end

    def post(uri, body)
      Client.post(uri, body)
    end

    def configuration
      Configuration.data
    end

    def configure(&block)
      Configuration.set(&block)
    end
  end
end
