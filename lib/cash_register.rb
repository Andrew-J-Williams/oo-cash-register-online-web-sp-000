class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity


  def initialize (discount = 0) # We set our discount to zero unless the user decides to input a value.
    @total = 0 # We initialize and set our total to zero.
    @discount = discount # We initialize our discount variable if a value is set.
    @item = [] # We also initialize an array that will hold the name of our products
  end

  def add_item(title, price, quantity = 1)
    @quantity = quantity
    @price = price
    @total += (price * quantity)

    # We also create an 'if/then' statement to account for duplicate items to be accounted for in our item array.
    if quantity > 1
      counter = 0
      while counter < quantity
        @item << title
        counter += 1
      end
    else
      @item << title
    end

  end

  def apply_discount

    if @discount != 0
      discount_total = @total * (discount.to_f/100) # Takes our discount value '20' and converts to 0.2, then performs total * 0.2
      @total -= discount_total
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end

  end

  def items
    @item
  end

  def void_last_transaction
    @total -= @price * @quantity
  end

end
