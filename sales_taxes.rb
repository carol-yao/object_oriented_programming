class Item

  attr_accessor :type

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
      sales_tax_imported + sales_tax_good
    elsif type == "good"
      sales_tax_good
    elsif type == "imported"
      sales_tax_imported
    elsif type == "book" || type == "food" || type == "medical"
      sales_tax_exempt
    else
      "invalid type"
    end
  end

end

class Receipt
  def initialize
    @items = []
  end

  @@sales_tax = 0
  @@total = 0

  def add(item)
    if item.is_a?(Item)
      @items << item
      @@sales_tax += calculate_tax(item)
      @@total += calculate_tax(item) + @price
    else
      "That is not of class Item."
    end
  end

  def self.total_sales_tax
    @@sales_tax
  end

  def self.total
    @@total
  end
  

end

# choco = Item.new(1, "imported good", "choco", 5)
# puts choco.calculate_tax
#
# fish = Item.new(1, "good", "choco", 5)
# puts fish.calculate_tax
#
# cracker = Item.new(1, "imported", "choco", 5)
# puts cracker.calculate_tax
#
# book = Item.new(1, "book", "choco", 5)
# puts book.calculate_tax
#
# food = Item.new(1, "food", "choco", 5)
# puts food.calculate_tax
#
# med = Item.new(1, "medical", "choco", 5)
# puts med.calculate_tax
