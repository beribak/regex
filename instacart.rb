# 1. Welcome message
puts "Welcome to instacart!!!"
puts "============================================"

# 2. Display whats available with price HASH
menu = {
    "kiwi" => 1.25,
    "banana" => 0.5,
    "mango" => 4,
    "asparagus" => 9
}

puts "Item menu:"
menu.each do |item, price|
    puts "#{item} -- #{price}$"
end

# 3. Ask user to input item until they type "quit" LOOP
#  Also check if item exists when user types item name CONDITIONAL or include
# puts "Which item would you like to add to your shopping cart?"
user_input =  "" 
cart = []

until user_input == "quit"
    puts "Which item would you like to add to your shopping cart?"
    user_input = gets.chomp # => askdjfhasukd
    
    if user_input != "quit"
        puts "How many?"
        item_quantity = gets.chomp.to_i
    end

    if menu.key?(user_input)
        item_quantity.times() {
            cart.push(user_input) if user_input != "quit"  
        }
    else
        if user_input != "quit"
            puts "=========================================="
            puts "Item not available!!!" 
        end
    end
end

p cart

# 4. calculate total price of item in cart
total_price = 0
cart.each do |item|
    total_price += menu[item]
end

p "============================================"
p "You need to pay: #{total_price}$"


