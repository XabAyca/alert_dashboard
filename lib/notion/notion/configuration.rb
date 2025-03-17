module Notion
  # Configuration module for the Notion API client.
  module Configuration
    # It uses a Struct (`ConfigData`) to store configuration values
    ConfigData = Struct.new(:base_url, :api_key, keyword_init: true)
    # Example usage:
    # Notion::Configuration.set do |config|
    #   config.base_url = "https://api.notion.com"
    #   config.api_key = "your_api_key"
    # end

    class << self
      attr_reader :data

      def find_or_initialize
        @data ||= ConfigData.new
      end

      def set(&block)
        yield(find_or_initialize)
      end
    end
  end
end
