# RANDOM MENU GENERATOR
# CREATED BY: LJ
# LAST UPDATED: AUGUST 6, 2018
###############################
## allow for user selection of hardcoded menu items or custom
puts "For today's menu generation you have two options: "
puts "1 - Select from predefined menu items or"
puts "2 - Create your own menu items and descriptions"
print"\nWhich would you like to do today? (Select option 1 or 2): "
selection = gets.chomp
until selection == "1" || selection == "2"
  print "Invalid selection, please enter 1 or 2: "
  selection = gets.chomp
end

if selection == "1" # user requests hardcoded menu
  # hardcode 3 arrays: 1 w/ food adjectives,
  # 1 w/ cooking styles, 1 with foods
  food_desc = %w(juicy hot spicy tangy cold zesty sweet savory scrumptious delicate)
  food_style = %w(boiled steamed pan-seared grilled barbequed simmered tempura hand-whipped stir-fried broiled)
  foods = %w(steak carrots ice-cream potatoes salmon veggie-burger cake meat-loaf chicken squid)
else # => option 2, custom menu creation
  # empty all arrays
  food_desc = []
  food_style = []
  foods = []
  print "How many menu items would you like to create? "
  menu_size = gets.chomp.to_i
  puts "Great! Today we will create #{menu_size} items."
  puts "Let's start by entering some words to describe the #{menu_size} items: "
  menu_size.times do |i|
    puts "+" * 30
    puts "Round #{i + 1} description"
    print "Enter an adjective (e.g. savory, tart, etc.): "
    food_desc << gets.chomp
    print "Enter a cooking/preparation style (e.g. baked, broiled, etc.): "
    food_style << gets.chomp
    print "Enter the food type (e.g. fish, carrots, etc.): "
    foods << gets.chomp
  end
  puts "Awesome! Thank you for the input!"
end


print "\n\n"
puts '*'* 30
menu_size = foods.size
puts "Today's menu may contain up to #{menu_size} items."
attempt = 1
print "How many menu items would you like created? "
num = gets.chomp.to_i
# ensure valid user input, provide 3 attempts
until num > 0 && num <= menu_size
  if attempt > 3
    puts "Sorry no menu today."
    puts
    exit
  else
    puts "Invalid quantity entered, please try again."
    num = gets.chomp.to_i
    attempt += 1
  end
end

puts "\n\nPlease enjoy from the following menu items: "

# create user input # of menu items
num.times do |i|
  # randomly select 1 item from each array
  desc = food_desc.sample
  style = food_style.sample
  food = foods.sample
  # output menu
  puts "#{i + 1}. #{desc.capitalize} #{style} #{food}"
  # ???? documentation shows .sample draws unique indices ?????
  # manually remove selected item to prevent repetition
  # food_desc.delete(desc)
  # food_style.delete(style)
  # foods.delete(food)
end
puts
