class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize (discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end

  def apply_discount
    discount_total = @total * (discount.to_f/100)
  end

end
