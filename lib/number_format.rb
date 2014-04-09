class NumberFormat
  attr_accessor :num

  def initialize(num)
    @num = num
    @num ||= 0
  end

  def currency_formatted
    "$" + sprintf("%0.2f", num)
  end

  def self.currency_formatted(num)
    new(num).currency_formatted
  end
end
