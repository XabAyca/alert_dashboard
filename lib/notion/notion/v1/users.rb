module Notion
  module V1
    # Notion Users endpoints
    class Users
      def list(params = {})
        KeyValidator.new(params, [], %i[start_cursor page_size])

        Notion.get(
          UriGenerator.new(self.class.name, params).generate
        )
      end
    end
  end
end
