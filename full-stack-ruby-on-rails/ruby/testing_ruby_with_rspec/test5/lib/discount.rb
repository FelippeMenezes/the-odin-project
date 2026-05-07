class Discount

  VALID_TYPES = [:percentage, :fixed].freeze

  def initialize(type:, value:)
    @type = type
    @value = value
  end

  def apply(price)
    return price unless valid?

    case @type
    when :percentage
      price - (price * @value / 100.0)
    when :fixed
      [price - @value, 0].max
    end
  end

  def valid?
    VALID_TYPES.include?(@type) && @value.positive?
  end
end
