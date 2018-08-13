#x - In the file random-menu.rb, in your code, create three arrays of ten items each. These three arrays/lists will be a different type of food or descriptor for that food.

# OLD LIST BEFORE I TOOK USER INPUT

# adjectives = ["Delicious", "Hot", "Creamy", "Buttery", "Fragrant", "Regal", "Luxorious", "Salty", "Sweet", "Famous"]
#
# cooking_styles = ["Pan-Fried", "Steamed", "Boiled", "Deep-Fried", "Browned", "Raw", "Stir-Fried", "Braised", "Poached", "Roasted"]
#
# foods = ["Dumplings", "Clams", "Veal", "Lobster", "Crab", "Salmon", "Halibut", "Cod", "Lamb", "Duck"]

#x - By selecting a random item from each of the three arrays, it can create a full description of a randomized food.

#x - The menu items are selected randomly.
#x - There are 10 menu items.
#x - Each item should pull one word from each of the 3 arrays.
#x - The items are numbers 1-10 (not starting at zero).
#x - Run the program a few times and ensure that the last word in the arrays are used. Also ensure that the first word in the arrays are used at least occasionally.

# OPTIONAL ENHANCEMENTS
#x - Expand your solution to ensure that no descriptive term in a menu item is ever repeated. So if the first menu item is hot pan-fried dumplings, the the phrases hot, pan-friend and dumpling cannot individually be used in any other menu items.

#x - Expand your solution to allow the user to determine how many items they'd like to see via user input. Note: You will need to ensure that this user-chosen number of items is not larger than the number of items you have in your arrays.
#x - Instead of using hardcoded or predefined arrays, make your program accept user input. This user input will be utilized to generate the menu items. You'll need to prompt for and store a varying number of entries for each food-type array.

# initialize lists
adjectives = []
cooking_styles = []
foods = []

# ask user to input number of menu items
puts "How many menu items would you like to create?"
enter_items = gets.chomp

# verify that user input is positive integer; if not, give error message and ask for new input
if enter_items.to_i.to_s != enter_items || enter_items.to_i < 1
  until enter_items.to_i.to_s == enter_items && enter_items.to_i >= 1
    print "You must enter a positive integer. Please try again: "
    enter_items = gets.chomp
  end
end
enter_items = enter_items.to_i

puts ""

# user enters menu items
enter_items.times do |num|
  puts "Please enter adjective #{num+1}: "
  adjective = gets.chomp
  adjectives << adjective
end

puts ""

enter_items.times do |num|
  puts "Please enter cooking style #{num+1}: "
  cooking_style = gets.chomp
  cooking_styles << cooking_style
end

puts ""

enter_items.times do |num|
  puts "Please enter food #{num+1}: "
  food = gets.chomp
  foods << food
end

# randomize the lists
adjectives = adjectives.shuffle
cooking_styles = cooking_styles.shuffle
foods = foods.shuffle

puts ""

# ask user to input number of items they want to view
puts "You can view #{enter_items} menu items or less. How many menu items would you like to view? "
view_items = gets.chomp


# verify that user input is is not greater than number of menu items created; if it is, give error message and ask for new input
if view_items.to_i.to_s != view_items || view_items.to_i > enter_items
  until view_items.to_i.to_s == view_items && view_items.to_i <= enter_items
    print "You may only view #{enter_items} menu items or less. Please try again: "
    view_items = gets.chomp
  end
end
view_items = view_items.to_i

# print menu items
view_items.times do |index|
  puts "#{index+1}. #{adjectives[index]} #{cooking_styles[index]} #{foods[index]}"
end
