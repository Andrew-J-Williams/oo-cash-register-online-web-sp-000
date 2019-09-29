class CashRegister

  attr_accessor :total, :discount

  def initialize (discount = 0)
    @total = 0
    @discount = discount
  end

  def self.add_item(title, price, quantity = 1)
    self.total += (price * discount)
  end


end
