class Item

  attr_accessor :name, :cost

  def initialize(name, cost, quantity, exempt = 0, import = 0)
    @name = name
    @cost = cost
    @quantity = quantity
    @exempt = exempt
    @import = import
  end

  def finalcost
      @cost * @quantity * 1.1
    end
end


class ImportedItem < Item

  def finalcost
    @salestax = @cost * @quantity * 0.10 * 0.05
    @cost * @quantity + @salestax
  end
end

class ExemptedItem < Item

    def finalcost
      @cost * @quantity
    end
end

class Receipt

  def initialize(receipt_number)
    @receipt_number = receipt_number
    @cart = []
    @salestax = 0
    @total = 0
  end

  def add(item)
    @cart << item
  end


  def printlist
    @cart.each do |item|
      @total += item.finalcost
      puts "Receipt #{@receipt_number} #{item.name} #{item.finalcost}"
    end
    puts "Total #{total}"
  end

  def test
    @cart[1]
  end
end

#Input 1
item1 = ExemptedItem.new("book", 12.49, 1)
item2 = Item.new("music CD", 14.99,1)
item3 = ExemptedItem.new("chocolate bar", 0.85,1)

#input 2
receipt2_item1 = Item.new("imported box of chocolates", 10.00, 1)
receipt2_item2 = Item.new("imported bottle of perfume", 47.50, 1)

#input 3
receipt3_item1 = Item.new("imported bottle of perfume", 27.99, 1)
receipt3_item2 = Item.new("perfume", 18.99, 1)
receipt3_item3 = Item.new("packet of headache pills", 9.75, 1)
receipt3_item4 = Item.new("imported box of chocolates", 11.25, 1)


#Receipt1
receipt1 = Receipt.new(1)
receipt1.add(item1)
receipt1.add(item2)
receipt1.add(item3)

#Receipt2
receipt2 = Receipt.new(2)
receipt2.add(receipt2_item1)
receipt2.add(receipt2_item2)

#Receipt3
receipt3 = Receipt.new(3)
receipt3.add(receipt3_item1)
receipt3.add(receipt3_item2)
receipt3.add(receipt3_item3)
receipt3.add(receipt3_item4)

receipt1.printlist
receipt2.printlist
receipt3.printlist

# apple = Item.new('apple',1,5)
