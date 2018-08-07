#Random Menu Generator

adjectives = [ "Tangy", "Delicious", "Spicy","Crunchy","Smooth", "Tender", "Mild","Sour","Scrumptious", "Creamy"]
cooking_styles= ["Sauteed","Baked","Grilled","Pan-Fried","Seared","Slow-Cooked","Smoked","Steamed", "Roasted","Fried"]
foods = ["Hamburger", "Chicken", "Pasta","Steak","Mussels","Shoshito Peppers","Tacos","Cauliflower","Quesadilla", "Arepa"]

len = adjectives.length

#Determine how many menu items to show
puts "Let's create a random menu!"
puts "How many menu items would you like to see? (1-10)"
how_many = gets.chomp.to_i
until how_many <= 10
  puts "I'm sorry we do not have that many items on our menu, please select a number between 1 & 10?"
  how_many = gets.chomp.to_i
end

#Randomly shuffle the menu items and print the menu
num = *(1..how_many)
adjectives.shuffle!
cooking_styles.shuffle!
foods.shuffle!

puts "Here is your Random Menu:\n"
num.each do |i|
  puts i.to_s + ". " + adjectives[i-1] + " " + cooking_styles[i-1] + " " + foods[i-1]
end
