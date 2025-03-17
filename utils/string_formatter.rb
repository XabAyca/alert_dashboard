# Util for string
class StringFormatter
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def underscore
    string.gsub("::", "/")
      .gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
      .gsub(/([a-z\d])([A-Z])/, '\1_\2')
      .tr("-", "_")
      .downcase
  end
end
