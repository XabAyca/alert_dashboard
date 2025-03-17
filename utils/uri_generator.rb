# Util for generate URI
class UriGenerator
  attr_reader :options, :post_option, :klass

  def initialize(klass, opt = {}, post_option = nil)
    @options = opt.map { |key, value| "#{key}=#{value}" }.join("&")
    @post_option = post_option
    @klass = klass
  end

  def generate
    uri = base_uri
    uri += "/#{post_option}" if post_option
    uri += "?#{options}" if !options.empty?
    uri
  end

  private

  def base_uri
    StringFormatter
      .new(klass.delete_prefix("Notion::"))
      .underscore
  end
end
