require "net/http"
require "json"

module Notion
  # HTTP client for interacting with the Notion API.
  module Client
    class << self
      def get(path)
        request(path, method: "GET")
      end

      def post(path, body)
        request(path, body: body, method: "POST")
      end

      private

      def request(path, body: {}, method: "GET")
        http = Net::HTTP.new((uri = uri(path)).host, uri.port)
        http.use_ssl = true
        res = http.send_request(method, uri.to_s, body.to_json, headers)

        return {"error" => "not found"} if (body = res.body) == ""
        JSON.parse(body)
      end

      def config
        @config ||= Notion.configuration
      end

      def uri(path)
        URI.parse("#{config.base_url}/#{path}")
      end

      def headers
        {
          "content-type": "application/json",
          accept: "application/json",
          Authorization: "Bearer #{config.api_key}",
          "Notion-version": "2022-06-28"
        }
      end
    end
  end
end
