# creates a randomize food menu item based on food types inputed by user
# laura barrera
# last edited: August 6, 2018

adjectives = [] #"hot", "cold", "spicy", "plain", "bitter", "delicious", "creamy", "sweet", "salty", "tart"]
styles = [] #"seasoned", "baked", "pan-fried", "steamed", "grilled", "smoked", "caramelized", "casserole", "curied", "creamed"]
foods = []
oldfrase = []

# get user input
puts "how many menu items would you like to see?"
max = gets.chomp.to_i

puts "now we are going to collect some information about food types, food adjectives, and food styles"
# store user input about food type
puts "\nplease tell me #{max} food types:"
(1..max).each do |num|
  print "food item #{num}:"
  foods.append(gets.chomp)
end

# store user input about food adjective
puts "\nplease tell me #{max} food adjectives:"
(1..max).each do |num|
  print "food adjective #{num}:"
  adjectives.append(gets.chomp)
end

#store user input about styles
puts "\nplease tell me #{max} food styles:"
(1..max).each do |num|
  print "food style #{num}:"
  styles.append(gets.chomp)
end

puts "\nwe are done collecting info \ngenerating food menu....\n\nHere are the #{max} menu items!"
(1..max).each do |num|
  # create random string
  index = Random.rand(0...max)
  newfrase = "#{adjectives[index]} #{ styles[index]} #{foods[index]}"

  # check if we have created that string before
  while oldfrase.include? newfrase
    index = Random.rand(0...max) # does not include max because if food items were 3, it will be stored as 0, 1, 2
    newfrase = "#{adjectives[index]} #{ styles[index]} #{foods[index]}"
  end

  # add new string to the created strings array
  oldfrase.append(newfrase)
  print " #{num}. #{newfrase}\n"
end
