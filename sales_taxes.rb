class Item

  attr_accessor :type, :sales_tax, :price

  def initialize(quantity, type, name, price)
    @quantity = quantity
    @type = type
    @name = name
    @price = price
  end

  def sales_tax_good
    ((10.00 * @price) / 100.00)
  end

  def sales_tax_exempt
    0
  end

  def sales_tax_imported
    ((5.00 * @price) / 100.00)
  end

  def calculate_tax
    if type == "imported good"
      sales_tax = sales_tax_imported + sales_tax_good
    elsif type == "good"
      sales_tax = sales_tax_good
    elsif type == "imported"
      sale_tax = sales_tax_imported
    elsif type == "book" || type == "food" || type == "medical"
      sales_tax = sales_tax_exempt
    else
      "invalid type"
    end
  end

end

class Receipt

  attr_accessor :total_sales_tax, :total
  def initialize
    @items = []
    @total_sales_tax = 0
    @total = 0
  end



  def add(item)
    if item.is_a?(Item)
      @items << item
      @total_sales_tax += item.calculate_tax
      @total += item.calculate_tax + item.price
    else
      "That is not of class Item."
    end
  end


end





choco = Item.new(1, "imported good", "choco", 5)
# puts choco.calculate_tax

fish = Item.new(1, "good", "choco", 5)
# puts fish.calculate_tax

cracker = Item.new(1, "imported", "choco", 5)
# puts cracker.calculate_tax

book = Item.new(1, "book", "choco", 5)
# puts book.calculate_tax

food = Item.new(1, "food", "choco", 5)
# puts food.calculate_tax

med = Item.new(1, "medical", "choco", 5)
 # puts med.calculate_tax

receipt1 = Receipt.new
p receipt1.add(choco)
p receipt1
puts receipt1.total_sales_tax
puts receipt1.total
