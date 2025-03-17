require_relative "../lib/notion/notion"

Notion.configure do |config|
  config.base_url = ENV["NOTION_BASE_URL"]
  config.api_key = ENV["NOTION_API_KEY"]
end
