class Items

  def initialize(item, cost, quantity, exempt = 0, import = 0)
    @item = item
    @cost = cost
    @quantity = quantity
    @exempt = exempt
    @import = import
  end

  def cost
    cost = @cost * @quantity * 1.05 * import * exempt * 1.10
  end
  

end

class Receipt

  def print
  end


end
