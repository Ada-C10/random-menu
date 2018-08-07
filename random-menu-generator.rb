def collect_positive_num_of_foods_from_user
  puts "How many food types would you like to have on the menu?"
  num_of_food_options = gets.chomp.to_i
  until num_of_food_options >= 0
    puts "Enter a number greater than or equal to zero:"
    num_of_food_options = gets.chomp.to_i
  end
  num_of_food_options
end

def collect_food_types_from_user(num)
  food = []
  puts "Enter the name of #{num} types of food below:"
  num.times do
    user_choice_of_food = gets.chomp
    while food.include?(user_choice_of_food)
      puts "That food is already on the menu, enter a unique one:"
      user_choice_of_food = gets.chomp
    end
    food << user_choice_of_food
  end
  food
end

def accept_user_input_less_than_or_equal_to_foods_array_size(array, message, num)
  puts message
  user_choice = gets.chomp.to_i
  until user_choice <= array.size
    puts "We don't have that many items on the menu. Enter a number less than or equal to #{num}:"
    user_choice = gets.chomp.to_i
  end
  user_choice
end

def print_menu(array1, array2, array3, num_of_foods) #, user_choice
  num_of_foods.times do |i|
     puts "#{i+1}. #{array1.delete(array1.sample)} #{array2.delete(array2.sample)} #{array3.delete(array3.sample)}"
  end
end

1

temperatures_array = %w[hot cold cool frozen warm luke-warm icy on-fire lava steamy ]
colors_array = %w[rainbow red yellow green blue purple violet orange white black ]

puts "Welcome to the Random Menu Generator!"

num_of_foods = collect_positive_num_of_foods_from_user

foods_array = collect_food_types_from_user(num_of_foods)

print_menu(temperatures_array, colors_array, foods_array, num_of_foods) #user_choice
