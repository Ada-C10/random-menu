puts "Welcome to the Random Menu Generator Program."

# prompts user for how many menu items to display
print "How many menu items would you like to see? "
number_items = gets.chomp.to_i

# array containing food adjectives
adj = []

# array containing food preparation style_numbers
style = []

# array containing food items
food = []

number_items.times do
  print "Please provide an adjective: "
  adj << gets.chomp
  print "Please provide a food preparation style: "
  style << gets.chomp
  print "Please provide a food: "
  food << gets.chomp
end

# # array containing 10 food adjectives
# adj = ["hot", "cold", "spicy", "creamy", "tangy", "salty", "sweet",
# "icy", "sour", "savory"]
#
# # array containing food preparation styles
# style = ["fried", "steamed", "sauteed", "baked", "grilled", "seared",
# "blackened", "herbed", "crusted", "pan-fried"]
#
# # array containing food items
# food = ["chicken", "steak", "pork tenderloin", "salmon", "cod", "halibut",
# "pork chops", "tacos", "noodles", "sausage"]

# array containing random numbers generated
adj_numbers = []
style_numbers = []
food_numbers = []

# randomly generate numbers for each menu item and print to screen
number_items.times do |menu_item|
  # generate random number for food adjective
  random_adj = rand(0...number_items)
  # generate new randon number if adjective has already been used
  while adj_numbers.include?(random_adj)
    random_adj = rand(0...number_items)
  end
  # push random number to adj_numbers array
  adj_numbers << random_adj
  # assign adjective from array to adjective variable
  adjective = adj[random_adj]
  # generate random number for food preparation style
  random_style = rand(0...number_items)
  # generate new randon number if adjective has already been used
  while style_numbers.include?(random_style)
    random_style = rand(0...number_items)
  end
  # push random number to style_numbers array
  style_numbers << random_style
  # assign style from array to preparation variable
  preparation = style[random_style]
  # generate new random number if style has already been used
  random_food = rand(0...number_items)
  while food_numbers.include?(random_food)
    random_food = rand(0...number_items)
  end
  # push random number to food_numbers array
  food_numbers << random_food
  # assign food from array to item variable
  item = food[random_food]
  # print menu item
  puts "#{menu_item + 1}. #{adjective} #{preparation} #{item}"
end
