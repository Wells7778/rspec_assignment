class Cart

  PRICE = 100

  def add(items)
    @ordered_items = items.map{ |key, value| value }.delete_if{ |i| i == 0 }
  end

  def calculate
    total = 0

    while @ordered_items.size > 0
      total += @ordered_items.size * PRICE * (1 - ((@ordered_items.size - 1) * 0.05))
      @ordered_items = @ordered_items.map{ |i| i -= 1 }
      @ordered_items = @ordered_items.delete_if{ |i| i == 0 }
    end

    return total
  end

end