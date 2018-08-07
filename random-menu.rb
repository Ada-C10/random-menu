puts "Welcome to the menu generator!"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

#descriptors = ["spicy", "salty", "Egyptian", "Szechuan", "chilled", "soft", "hot", "lovely", "ancient", "perfumed"]
#cooking_styles = ["steamed", "fried", "boiled", "pickled", "raw", "baked", "fermented", "broiled", "pan-fried", "chopped"]
#food_items = ["fish tacos","hotdogs", "shrimpies", "tuna", "puppy-dog-tails", "cornflakes", "ice cream", "dumplings", "avocado", "coconut-chunks"]
item_count = 0
descriptors = []
cooking_styles = []
food_items = []

user_input = ""
until user_input == "yes"
  puts "\nGive us a word that describes your dishes:"
    descriptors << gets.chomp
  puts "  Is that all? (type yes if finished)"
    user_input = gets.chomp
end

user_input = ""
until user_input == "yes"
  puts "\nTell us a cooking style:"
    cooking_styles << gets.chomp
  puts "  Is that all? (type yes if finished)"
    user_input = gets.chomp
end

user_input = ""
until user_input == "yes"
  puts "\nWhat ingredients are we working with?"
    food_items << gets.chomp
  puts "  Is that all? (type yes if finished)"
    user_input = gets.chomp
end


puts "\nNow we'll generate the menu..."
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

until item_count != 0
  puts "\nHow many items would you like to view?"
  item_count = gets.chomp.to_i
    if item_count > descriptors.length && item_count > cooking_styles.length && item_count > food_items.length
      puts "We don't have that many items. Can you give me a lower number please?"
      item_count = 0
    end
end

puts "\nHere's what you can enjoy today:"

item_count.times do |i|
  puts "#{i+1}. #{descriptors.delete(descriptors.sample)} #{cooking_styles.delete(cooking_styles.sample)} #{food_items.delete(food_items.sample)}"
end

puts "\nByeeeeeeee"
