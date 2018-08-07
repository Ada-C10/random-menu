
# Creating empty arrays to be filled later
foods = []
adjectives = []
cooking_styles = []

# Creating three arrays based on user input
1.times do
  puts "Enter a food"
  food = gets.chomp.downcase

  # Checking entry is not blank
  until food.empty? == false
    puts "Please enter a food:"
    food = gets.chomp.downcase
  end

  # Checking if entry already exists
  until foods.include?(food) == false
    puts "Sorry, you've already entered that. Please enter a different food"
    food = gets.chomp.downcase
  end

  # Pushing food to main array
  foods << food

  puts "Enter an adjective"
  adjective = gets.chomp.downcase

  # Checking entry is not blank
  until adjective.empty? == false
    puts "Please enter a adjective:"
    adjective = gets.chomp.downcase
  end

  # Checking if entrt already exists
  until adjectives.include?(adjective) == false
    puts "Sorry, you've already entered that. Please enter a different adjective"
    adjective = gets.chomp.downcase
  end

  # Pushing adjective to main array
  adjectives << adjective

  puts "Enter a cooking style"
  cooking_style = gets.chomp.downcase

  # Checking entry is not blank
  until cooking_style.empty? == false
    puts "Please enter a cooking style:"
    cooking_style = gets.chomp.downcase
  end

  # Checking if entry already exists
  until cooking_styles.include?(cooking_style) == false
    puts "Sorry, you've already entered that. Please enter a different cooking style"
    cooking_style = gets.chomp.downcase
  end

  # Pushing cooking style to main array
  cooking_styles << cooking_style

  # Asking if user wants to enter another item
  puts "Would you like to enter another item?"
  another = gets.chomp.downcase

  # Verifying user entered yes or no
  until another == "yes" || another == "no"
    puts "Please enter yes or no."
    another = gets.chomp.downcase
  end

  # Redoing code if user entered yes
  redo if another == "yes"
end

# Asking how many menu items user would like to see
puts "How many items would you like to see?"
items_to_print = gets.chomp

# Verifying that user is not asking for too high of a number
until items_to_print.to_i <= foods.length && items_to_print.include?("-") == false
  puts "Sorry, we only have #{foods.length} items. Please choose a different number."
  items_to_print = gets.chomp
end

# Verifying user entered a number
until items_to_print.to_i.to_s == items_to_print
  puts "Please enter a number."
  items_to_print = gets.chomp
end

# Showing description of randomized food
items_to_print.to_i.times do
  # Getting random items from each array
  description_adjective = adjectives.sample
  description_cooking_style = cooking_styles.sample
  description_food = foods.sample

  # Creating and showing description
  description = description_adjective + " " + description_cooking_style + " " + description_food
  puts description

  # Removing items that have been used from arrays
  foods.delete(description_food)
  adjectives.delete(description_adjective)
  cooking_styles.delete(description_cooking_style)
end
