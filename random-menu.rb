# adjectives = ["sweet", "savory", "salty", "bitter", "tart", "smoky", "creamy", "spicy", "crunchy", "gooey"]
# styles = ["baked", "blanched", "boiled", "braised", "browned", "caramelized", "curdled", "deep-fried", "roasted", "fermented"]
# foods = ["trout", "quinoa", "lentils", "potatoes", "broccoli", "coconuts", "lamb", "eggs", "apples", "kale"]


# create a stering array with words: adjective, styles, food

puts "Welcome to the random menu generator! Let's create our menu."
puts

# Adjectives Array
print "How many adjectives will you be inputting? "
num_adj = gets.chomp.to_i
adjectives = Array.new()
num_adj.times do
  print "Enter adjective: "
  adjective = gets.chomp
  adjectives.push(adjective)
end
puts ""

#Styles Array
print "How many styles will you be inputting? "
num_style = gets.chomp.to_i
styles = Array.new()
num_style.times do
  print "Enter style: "
  style = gets.chomp
  styles.push(style)
end
puts ""

#Foods Array
print "How many foods will you be inputting? "
num_foods = gets.chomp.to_i
foods = Array.new()
num_foods.times do
  print "Enter food: "
  food = gets.chomp
  foods.push(food)
end
puts ""

number = 0
while number == 0 do
  print "Enter number of menu items: "
  number = gets.chomp.to_i
end

while number > adjectives.length || number > styles.length || number > foods.length do
  puts "Your number is too large"
  print "Enter number of menu items: "
  number = gets.chomp.to_i
end

adjectives.shuffle!
styles.shuffle!
foods.shuffle!

m=0
number.times do
  puts "#{m+1}. #{adjectives[m]} #{styles[m]} #{foods[m]}"
  m += 1
end

# m = 0
# while m < number do
#   puts "#{m+1}. #{adjectives.delete_at(rand(0..adjectives.length-1))} #{styles.delete_at(rand(0..styles.length-1))} #{foods.delete_at(rand(0..foods.length-1))}"
#   m += 1
# end
