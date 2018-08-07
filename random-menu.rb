# create 3 arrays
#adjective
adjectives = %W[hot cold soft hard runny mild sweet savory delicious spicy]

# cooking style
style = %W[pan-fried steamed satay boiled baked grilled raw marinated cold fresh]

# type of food
food = %W[chicken clams steak mixed-vegetables pork dumplings turkey salmon eggplant beets]


#shuffle arrange array
adjectives.shuffle!
style.shuffle!
food.shuffle!


#pick at random what to output option 1
10.times do |i|
  puts "#{adjectives[i]} #{style[i]} #{food[i]}"
end

#expand soltion option 1
puts "Enter how many items you want in the menu"

items = gets.chomp.to_i
until items <= 10 && items != 0
  puts "That exceeds our menu options. Please enter a number 1 - 10"
  items = gets.chomp.to_i
end

items.times do |i|
    puts "#{adjectives[i]} #{style[i]} #{food[i]}"
end

#expand soltion option 2

adjectives = []
style = []
food = []

#user input on how many items they want on their menu
puts "Enter how many items you want in the menu. Add your items below:"
items = gets.chomp.to_i

#prompts user for number of items 
items.times do |i|
  puts "Enter an adjective: (spicy, tanny):\n"
  adjectives[i] = gets.chomp
  puts "Enter a cooking sytle:(fried, baked)\n"
  style[i] = gets.chomp
  puts "Enter a protein:(chicken, vegetables)\n"
  food[i] = gets.chomp
end

puts "Here are your menu slections:\n"

items.times do |i|
  puts "Item#{i + 1}: #{adjectives[i]} #{style[i]} #{food[i]}\n\n"
end
