# Jacquelyn Cheng
# Ada Cohort 10 Nodes
# Random Menu Generator
# https://github.com/Ada-C10/random-menu
# 8/6/2018

=begin
RANDOM MENU GENERATOR

In the file random-menu.rb, in your code, create three arrays of ten items each.
These three arrays/lists will be a different type of food or descriptor for
that food.

For example, the first array can contain adjectives, the second can be cooking
styles, and the third can be foods.

By selecting a random item from each of the three arrays, it can create a full
description of a randomized food. It could create a few items like: hot
pan-fried dumplings, soft steamed clams, etc.

Optional Enhancements

  Expand your solution to ensure that no descriptive term in a menu item is
  ever repeated. So if the first menu item is hot pan-fried dumplings, the
  phrases hot, pan-friend and dumpling cannot individually be used in any other
  menu items. [COMPLETED]

  Expand your solution to allow the user to determine how many items they'd like
  to see via user input. Note: You will need to ensure that this user-chosen
  number of items is not larger than the number of items you have in your
  arrays. [COMPLETED]

  Instead of using hardcoded or predefined arrays, make your program accept user
  input. This user input will be utilized to generate the menu items. You'll
  need to prompt for and store a varying number of entries for each food-type
  array. [COMPLETED]
=end


puts "Welcome to Cafe Random!"
puts "Give us a set of adjectives, cook styles, and foods, and we'll randomly mash them up to build your dishes!"
puts

# Ask the user to define the menu size
puts "How many random dishes would you like today?"
menu_size = 0
until menu_size >= 1 && menu_size <= 10
  menu_size = gets.chomp.to_i
end
puts

# VERSION 1 - SET MENU ITEMS
=begin
adjectives = [ "spicy", "zesty", "tangy", "sweet", "salted",
  "hot", "chilled", "light", "candied", "caramelized" ]
cookstyles = [ "braised", "roasted", "fried", "grilled", "cold-pressed",
  "baked", "microwaved", "steamed", "broiled", "boiled" ]
foods = [ "chicken", "eggplant", "noodles", "beef", "pork",
  "pasta", "zucchini", "squash", "cheese", "dumplings" ]
=end

# VERSION 2 - USER-DEFINED MENU ITEMS

# Take in as many adjectives as the user-defined menu size and populate adjectives array
puts "What are your favorite flavors? Enter #{menu_size} adjectives like spicy, tangy, etc. - one per line."
adjectives = Array.new
menu_size.times do
  adjectives.push(gets.chomp)
end
puts

# Take in as many cook styles as the user-defined menu size and populate cookstyles array
puts "How do you like your food prepared? Enter #{menu_size} cook styles like fried, steamed, etc. - one per line)"
cookstyles = Array.new
menu_size.times do
  cookstyles.push(gets.chomp)
end
puts

# Take in as many foods as the user-defined menu size and populate foods array
puts "What are your #{menu_size} favorite foods? Enter one item per line. (example: chicken)"
foods = Array.new
menu_size.times do
  foods.push(gets.chomp)
end
puts

puts "Your #{menu_size} dishes are:"

# method to choose a random word from array and ensure it's not selected again by replacing it with zero
def pick_item(array_name)
  found = false
  until found == true do
    random = rand(array_name.length)
    if array_name[random] != 0
      choice = array_name[random]
      array_name[random] = 0
      found = true
      return choice
    end
  end
end

# print out random menu items
menu_size.times do
  print "#{pick_item(adjectives)} "
  print "#{pick_item(cookstyles)} "
  puts pick_item(foods)
end

# VERSION WITHOUT USING A METHOD
# menu_size.times do
#   found_adj = false
#   until found_adj == true do
#     random = rand(menu_size)
#     if adjectives[random] != 0
#       print "#{adjectives[random]} "
#       adjectives[random] = 0
#       found_adj = true
#     end
#   end
#
#   found_style = false
#   until found_style == true do
#     random = rand(menu_size)
#     if cookstyles[random] != 0
#       print "#{cookstyles[random]} "
#       cookstyles[random] = 0
#       found_style = true
#     end
#   end
#
#   found_food = false
#   until found_food == true do
#     random = rand(menu_size)
#     if foods[random] != 0
#       puts "#{foods[random]}"
#       foods[random] = 0
#       found_food = true
#     end
#   end

puts

puts "Thanks for coming to Cafe Random!"
