# prints menu created from user input

# arrays help store user input
cooking_style = []
adjectives =[]
foods = []

#takes user input for number of cooking styles
print "How many cooking styles would you like to enter? "
number_cooking_styles = gets.chomp.to_i

# takes and stores user input for cooking styles in array
number_cooking_styles.times do
 print "Enter cooking style: "
 cs = gets.chomp
 cooking_style << cs
end

# takes user input for number of adjectives
print "How many adjectives would you like to enter? "
number_adjectives = gets.chomp.to_i

# takes and stores user input for adjectives in array
number_adjectives.times do
 print "Enter adjective: "
 adj = gets.chomp
 adjectives << adj
end

# takes user input for number of foods
print "How many foods would you like to enter? "
number_foods = gets.chomp.to_i

# takes and stores user input for foods in array
number_foods.times do
 print "Enter food: "
 fo = gets.chomp
 foods << fo
end

# takes user input for number of items in menu
print "How many items in menu? "
items_menu = gets.chomp.to_i

# makes sure that length of array is less than the smallest array that stores user input
until items_menu <= foods.length && items_menu <= adjectives.length && items_menu <= cooking_style.length
  puts "Menu needs to be smaller or equal to input!"
  print "How many items in menu?"
  items_menu = gets.chomp.to_i
end

# prints menu
# checks random number to make sure the numbers are not repeated within an array
# stores used elements into new arrays
puts "Here is your menu: "
x = items_menu - 1

puts "Your random menu:"
rand_adjective_array = []
rand_cooking_style_array = []
rand_foods_array = []
count = 1
while count <= items_menu
  random_adjective = rand(0..x)
  while rand_adjective_array.include?(random_adjective)
    random_adjective = rand(0..x)
  end
  rand_adjective_array << random_adjective

  random_cooking_style = rand(0..x)
  while rand_cooking_style_array.include?(random_cooking_style)
    random_cooking_style = rand(0..x)
  end
  rand_cooking_style_array << random_cooking_style

  random_foods = rand(0..x)
  while rand_foods_array.include?(random_foods)
    random_foods = rand(0..x)
  end
  rand_foods_array << random_foods

puts "#{count} #{adjectives[random_adjective]} #{cooking_style[random_cooking_style]} #{foods[random_foods]}"
count += 1
end
