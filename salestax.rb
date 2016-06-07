class Item

	attr_accessor :kind, :price, :taxsum
  attr_reader :name

  def initialize(name, kind, price)
    @name = name
    @kind = kind
    @price = price
  end

  def tax_gen
    @price*0.10
  end

  def tax_imp
    @price*0.05
  end

  def tax_exempt
    0.0
  end

  def tax_calc
    if kind == "goods"
      taxsum = tax_gen
    elsif kind == "imported goods"
      taxsum = tax_imp + tax_gen
    elsif kind == "imported exempt"
      taxsum = tax_imp
    elsif kind == "book" || kind == "food" || type == "medical"
      taxsum = tax_exempt
    end
  end

  def total_price
    (tax_calc + @price)
  end

end

class Receipt

  attr_accessor :total_sales_tax, :total, :items

  def initialize
    @items = []
    @total_sales_tax = 0.0
    @total = 0.0
  end

  def add(item)
    if item.is_a?(Item)
      @items << item
      @total_sales_tax += item.tax_calc
      @total += item.total_price
    else
      "That is not of class Item."
    end
  end

  def print_receipt
    items.each do |item|
      p "#{item.name} : #{sprintf "%.2f", ((item.total_price * 20.0).round)/20.0}"
   end
      p "Sales Taxes: #{sprintf "%.2f", ((total_sales_tax * 20.0).round)/20.0}"
      p "Total: #{sprintf "%.2f", total}"
  end


end


book = Item.new('As The World Turns book', 'book', 10.75)
cd = Item.new('Rolling Stones CD', 'goods', 9.99)
cologne = Item.new('Drakkar 12oz', 'imported goods', 34.95)
chocolate = Item.new('Lindor Gembox 300g', 'imported exempt', 17.60)

puts "Here's your receipt"
puts
receipta = Receipt.new
receipta.add(cd)
receipta.add(cologne)
receipta.add(book)
receipta.add(chocolate)
receipta.print_receipt

