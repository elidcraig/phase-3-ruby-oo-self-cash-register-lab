class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize discount = 0
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = nil
  end

  def add_item title, price, quantity = 1
    quantity.times { @items << title } 
    @total += price * quantity
    @last_transaction = price * quantity
  end  

  def items
    @items
  end  

  def void_last_transaction
    @total -= @last_transaction
  end  

  def apply_discount
    unless @discount == 0 
      discount_total = @total - (@total * (@discount * 0.01)).to_i
      @total = discount_total
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."  
    end  
  end  

end  
