class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity


  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @item << title
  end

  def apply_discount

    if @discount != 0
      discount_total = @total * (discount.to_f/100)
      @total -= discount_total
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end

  end


end
