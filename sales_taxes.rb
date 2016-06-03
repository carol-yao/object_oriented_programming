class Item

  attr_accessor :type, :sales_tax, :price
  attr_reader :quantity, :name

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

  def final_price
    (calculate_tax + price)
  end

end

class Receipt

  attr_accessor :total_sales_tax, :total, :items

  def initialize
    @items = []
    @total_sales_tax = 0
    @total = 0
  end

  def add(item)
    if item.is_a?(Item)
      @items << item
      @total_sales_tax += item.calculate_tax
      @total += item.final_price
    else
      "That is not of class Item."
    end
  end

  def print_receipt
    items.each do |item|
      p "#{item.quantity} #{item.name} : #{sprintf "%.2f", ((item.final_price * 20.0).round)/20.0}"
    end
      p "Sales Taxes: #{sprintf "%.2f", ((total_sales_tax * 20.0).round)/20.0}"
      p "Total: #{sprintf "%.2f", total}"
  end


end

chocolate_bar = Item.new(1, "food", "chocolate_bar", 0.85)
# puts choco.calculate_tax

music_cd = Item.new(1, "good", "music CD", 14.99)
# puts fish.calculate_tax

imported_chocolates = Item.new(1, "imported", "imported box of chocolates", 10.00)
# puts cracker.calculate_tax

book = Item.new(1, "book", "book", 12.49)
# puts book.calculate_tax

imported_perfume = Item.new(1, "imported good", "imported bottle of perfume", 47.50)
imported_perfume2 = Item.new(1, "imported good", "imported bottle of perfume", 27.99)

perfume = Item.new(1, "good", "bottle of perfume", 18.99)
 # puts med.calculate_tax
headache_pills = Item.new(1, "medical", "packet of headache pills", 9.75)
imported_chocolates2 = Item.new(1, "imported", "box of imported chocolates", 11.25)



receipt1 = Receipt.new
receipt1.add(book)
receipt1.add(music_cd)
receipt1.add(chocolate_bar)
receipt1.print_receipt

receipt2 = Receipt.new
receipt2.add(imported_chocolates)
receipt2.add(imported_perfume)
receipt2.print_receipt

receipt3 = Receipt.new
receipt3.add(imported_perfume2)
receipt3.add(perfume)
receipt3.add(headache_pills)
receipt3.add(imported_chocolates2)
receipt3.print_receipt
