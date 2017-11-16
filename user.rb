require 'pry'
# binding.pry


# create "User" class. This class stores the users name and wallet balance.
class User
    attr_accessor :name, :wallet
    def initialize(name, wallet)
        @name = name
        @wallet = wallet
    end

    def user_info
        @wallet = wallet - $item_price # Subtract spent money from wallet
        puts "#{name}, you have $#{wallet} remaining."
    end
end


# Pulls information gathered from user to store their name and wallet balance
$current_user = User.new($shopper_name, $wallet_amt)

# current_user.user_info


