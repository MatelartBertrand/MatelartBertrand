store = {
  kiwi: 1.25,
  banana: 0.5,
  mango: 4,
  asparagus: 9
}

# Pseudo-code
# 1. Print Welcome
# 2. Define your store (what items are for sale?)
# 3. Get items from the user (shopping)
# 4. Print the bill (checkout)

puts "--------------------
Welcome to Instacart
--------------------"

puts "In our store today: "
store.each do |key, value|
  puts "#{key} : #{value}€"
end
puts "--------------------"

product = ""
total = 0
cart = []

puts "Which item?"
product = gets.chomp

until product == "quit"

  if store.has_key?(product.to_sym)
    cart << product.to_sym
    total = cart.map {|product| store[product] }.reduce(:+)
  else
    puts "Sorry, we don't have #{product} today.."
  end


  puts "Which item?"
  product = gets.chomp
end

p cart
# x #{store[product]} = #{(cart.count(element))*(store[product])}

kiwi_count = cart.count(:kiwi)
mango_count = cart.count(:mango)
banana_count = cart.count(:banana)
asparagus_count = cart.count(:asparagus)

puts "Number of kiwi : #{kiwi_count} x #{store[:kiwi]} € = #{kiwi_count * store[:kiwi]} €" if kiwi_count != 0
puts "Number of Mango : #{mango_count} x #{store[:mango]} € = #{mango_count * store[:mango]} €" if mango_count != 0
puts "Number of banana : #{banana_count} x #{store[:banana]} € = #{banana_count * store[:banana]} €" if banana_count != 0
puts "Number of asparagus : #{asparagus_count} x #{store[:asparagus]} € = #{asparagus_count * store[:asparagus]} €" if asparagus_count != 0

puts "TOTAL IS #{total}"















