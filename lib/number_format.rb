class NumberFormat
  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def currency_formatted
    "$" + sprintf("%0.2f", num)
  end

  def self.currency_formatted(num)
    new(num).currency_formatted
  end
end
