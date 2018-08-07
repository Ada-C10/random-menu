def input_words_to_array(word_type,array)
puts "How many #{word_type} would you like to use?"
  number_of_words_needed=gets.chomp.to_i
  number_of_words_needed.times do
    puts "Please enter #{word_type}:"
    user_input = gets.chomp.capitalize.to_s
    array.push(user_input)
  end
  return array
end

def display_array (word_type,array)
  puts "Your #{word_type} are:"
  i=1
  array.each do |word|
    puts "#{i}. #{word}"
    i+=1
  end
  puts "\n"
end

adjectives = []
cooking_styles =[]
foods = []

puts "Welcome to the Random Menu Generator:"
adjectives = input_words_to_array("adjectives", adjectives)
cooking_styles = input_words_to_array("cooking styles", cooking_styles)
foods = input_words_to_array("foods", foods)

display_array("adjectives", adjectives)
display_array("cooking styles", cooking_styles)
display_array("foods", foods)

#shuffle array outside of loop to eliminate repetition
puts "How many menu items do you need?"
menu_items_needed = gets.chomp.to_i
puts "\n"
puts "Here is your Random Menu"
  i = 1
while i <=menu_items_needed do
  random_adjective = adjectives.shuffle.shift
  random_cooking_style = cooking_styles.shuffle.shift
  random_food = foods.shuffle.shift
  puts " #{i}. #{random_adjective.capitalize} #{random_cooking_style.capitalize} #{random_food.capitalize}"
    i += 1
end
