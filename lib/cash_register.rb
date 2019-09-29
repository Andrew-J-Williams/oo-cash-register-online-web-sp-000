class CashRegister

  attr_accessor :total, :discount

  def initialize (discount = 0)
    @total = 0
    @discount = discount
  end

  def self.add_item(title, price)
    self.total += price
  end


end
