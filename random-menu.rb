# Create three empty arrays
food_adjectives = []
food_styles = []
foods = []

# Prompt for number of menu items
puts "How many menu items do you want displayed?"
number = gets.to_i

# Using user input, collecting more user input and store into arrays
number.times do
  puts "Give me a food adjective:"
  food_adjective = gets.chomp
  food_adjectives << food_adjective

  puts "Give me a food style:"
  food_style = gets.chomp
  food_styles << food_style

  puts "Give me a food:"
  food = gets.chomp
  foods << food
end

# Shuffle arrays
food_adjectives.shuffle!
food_styles.shuffle!
foods.shuffle!

# Display shuffled arrays
number.times do |i|
  puts "#{i + 1}. " + food_adjectives[i]  + " " + food_styles[i] + " " + foods[i]
end
