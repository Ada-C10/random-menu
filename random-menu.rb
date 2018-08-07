# This program is designed to create a program to generate a random menu based on the arrays of strings created in advance.
# prepared by Jessie Zhang at July 6 , 2018

# Welcome message
puts "\nWelcome to the random-menu program!\n\n"

# crate three arrays for adjectives, cooking styles and foods.
array_adj = Array.new
array_style = Array.new
array_food = Array.new

# ask user to enter the adjuectives they want to use in the menue
print "\nPlease enter the adjectives you will use to decribe the food, enter exit after you finish: "
input_adj = gets.chomp.downcase

while input_adj != "exit"
  if input_adj.strip.empty?      # warn the user if they entered nothing
    print "invalid input,try again."
  else
    array_adj.push(input_adj)
  end
  print "Please enter the adjectives you will use to decribe the food, enter exit after you finish: "
  input_adj = gets.chomp.downcase
end

# ask user to enter the cooking style they want to use in the menue
print "\nPlease enter the cooking styles you will use to decribe the food, enter exit after you finish: "
input_style = gets.chomp.downcase

while input_style != "exit"
  if input_style.strip.empty?
    print "invalid input,try again."
  else
    array_adj.push(input_style)
  end
  array_style.push(input_style)
  print "Please enter the cooking styles you will use to decribe the food, enter exit after you finish: "
  input_style = gets.chomp.downcase
end

#ask the user to enter the food nmae they want to use in the menu
print "\nPlease enter the food names you will use to decribe the food, enter exit after you finish: "
input_food = gets.chomp.downcase

while input_food != "exit"
  if input_food.strip.empty?
    print "invalid input,try again."
  else
    array_adj.push(input_food)
  end
  array_food.push(input_food)
  print "Please enter the food names you will use to decribe the food, enter exit after you finish: "
  input_food = gets.chomp.downcase
end

# ask user to enter the number of items in the menu
print "\nHow many food items you want to create in the manu: "
item_num = gets.chomp.to_i

array_count = [array_style.count, array_adj.count, array_food.count]
count_min = array_count.min

while item_num <= 0 || item_num > count_min
  print "wong input, please enter a positibve integer which is less than or equal to #{count_min}: "
  item_num = gets.chomp.to_i
end

# create the random-generated menu
rand_adj = array_adj.shuffle
rand_style = array_style.shuffle
rand_food = array_food.shuffle

puts "\nHere is the menu:"

item_num.times {|i| puts "#{i+1}. #{rand_adj[i]} #{rand_style[i]} #{rand_food[i]}"}
