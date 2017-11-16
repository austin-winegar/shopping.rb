# require "pry"
# require "./user.rb"
require "./inventory.rb"

# Welcome text, get name, get $wallet_amt
puts 'Welcome to my ruby store.'
puts
puts 'What is your name?'
$shopper_name = gets.chomp
puts
puts 'How much money do you have?'
$wallet_amt = gets.to_i

require "./user.rb"

def menu
    puts
    puts "What would you like to do?"
    puts "1. Buy something"
    puts "2. View inventory"
    puts "3. View my wallet balance"
    puts "4. Exit"
    user_input = gets.to_i
    case user_input
        when 1
            buy_something
        when 2
            puts
            print_inventory
        when 3
            puts
            puts "#{$shopper_name}, you have $#{$current_user.wallet}."  # retreive wallet amount from user.rb class
        when 4
            exit
        else
            puts
            puts "Not a valid option"
            menu
    end
end


def buy_something
    puts
    puts "1. Bread - $3"
    puts "2. Milk - $3"
    puts "3. Chicken - $5"
    puts "4. Cheese - $4"
    puts "5. Cookies - $2"
    puts "Type the number of the item you would like to buy."
    buy_item = gets.to_i
    case buy_item
        when 1
            puts "You have purchased bread."
            $item_price = $bread.item_price
            $current_user.user_info
        when 2
            puts "You have purchased milk."
            $item_price = $milk.item_price
            $current_user.user_info
        when 3
            puts "You have purchased chicken."
            $item_price = $chicken.item_price
            $current_user.user_info
        when 4
            puts "You have purchased cheese."
            $item_price = $cheese.item_price
            $current_user.user_info
        when 5
            puts "You have purchased cookies."
            $item_price = $cookies.item_price
            $current_user.user_info
        else
            puts
            puts "Not a valid option."
    end
end


# inventory list
def print_inventory
    puts
    puts "Our Inventory:"
    $bread.inventory_info
    $milk.inventory_info
    $chicken.inventory_info
    $cheese.inventory_info
    $cookies.inventory_info
end


# loop menu
while true
    menu
end
