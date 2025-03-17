# Util for key validation
class KeyValidator
  attr_reader :hash, :required_keys, :optional_keys

  def initialize(hash, required_keys = [], optional_keys = [])
    @hash = hash
    @required_keys = required_keys
    @optional_keys = optional_keys
  end

  def validate
    validate_required
    check_extra_arguments
    hash
  end

  private

  def validate_required
    missing_keys = required_keys - hash.keys
    unless missing_keys.empty?
      raise ArgumentError, %(Missing required keys: #{missing_keys.join(", ")})
    end
  end

  def check_extra_arguments
    Struct
      .new(*(required_keys + optional_keys), keyword_init: true)
      .new(**hash)
  end
end
