class CashRegister
  attr_accessor :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def discount
    @discount
  end

  def total=(total)
    @last_transaction = total
    @total = total
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= self.discount*10
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction#(price, quantity)
    #self.last_transaction -= (price * quantity)
    self.total -= self.last_transaction  #could use @total
  end

end
