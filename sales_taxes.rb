class Item

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
    if @type == imported good
      sales_tax_imported + sales_tax_good
    elsif @type == good
      sales_tax_good
    elsif @type == imported
      sales_tax_imported
    elsif @type == book || @type == food || @type == medical
      sales_tax_exempt
    end
  end





end

choco = Item.new(1, "choco", "choco", 5)
puts choco.sales_tax_good
puts choco.sales_tax_exempt
puts choco.sales_tax_imported
