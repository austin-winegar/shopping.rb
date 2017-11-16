require 'pry'
# binding.pry



# create "Inventory" class. This class stores items, inventory, and price.
class Inventory
    attr_accessor :item, :inventory, :item_price
    def initialize(item, inventory, item_price)
        @item = item
        @inventory = inventory
        @item_price = item_price
    end

    def inventory_info
        puts "#{item} - $#{item_price}"
    end
end

# Define items, inventory, and prices
$bread = Inventory.new('Bread', 3, 3)
$milk = Inventory.new('Milk', 3, 3)
$chicken = Inventory.new('Chicken', 3, 5)
$cheese = Inventory.new('Cheese', 3, 4)
$cookies = Inventory.new('Cookies', 3, 2)

# bread.inventory_info
# milk.inventory_info
# chicken.inventory_info
# cheese.inventory_info
# cookies.inventory_info


