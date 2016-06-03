class Item

  attr_reader :price

  def initialize(quantity, type, name, price)
    @quantity = quantity
    @type = type
    @name = name
    @price = price
  end

  def sales_tax_goods
    ((10.00 * price) / 100.00)
  end

  def sales_tax_exempt
    0
  end

  def sales_tax_imported
    ((5.00 * price) / 100.00)
  end



end

choco = Item.new(1, "choco", "choco", 5)
puts choco.sales_tax_goods
puts choco.sales_tax_exempt
puts choco.sales_tax_imported
