class Product
  attr_reader :name, :quantity, :price

  def initialize(name, quantity, price)
    @name = name
    @quantity = quantity
    @price = price
  end

  def display_details
    puts "Product: #{@name}"
    puts "Quantity: #{@quantity}"
    puts "Price: #{@price}"
    puts
  end
end

class InventoryManagement
  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def remove_product(product)
    @products.delete(product)
  end

  def display_products
    puts "All Products:"
    @products.each(&:display_details)
  end

  def total_value
    total = 0
    @products.each { |product| total += product.quantity * product.price }
    total
  end
end

# Example usage
inventory = InventoryManagement.new

product1 = Product.new("T-shirt", 10, 15.99)
inventory.add_product(product1)

product2 = Product.new("Jeans", 5, 29.99)
inventory.add_product(product2)

product3 = Product.new("Shoes", 2, 49.99)
inventory.add_product(product3)

inventory.display_products

puts "Total Value of Inventory: $#{inventory.total_value}"

inventory.remove_product(product2)

puts "Updated Product List:"
inventory.display_products
