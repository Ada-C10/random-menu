#ORIGINAL VERSION - did not accept user input
#three arrays of ten words each
#descriptor = ["frozen","broiled","baked","steamed","fried","molten","crispy","crunchy","smooth","velvety"]
#flavor = ["chocolate", "vanilla", "strawberry", "pistachio", "orange", "lemon", "banana", "cherry","pineapple","mint"]
#food_type = ["ice cream","cookie","cupcake","muffin","bread","sandwich","lollipop","souffle","soup","salad"]

descriptor = []
flavor = []
food_type = []

puts "Let's make a random menu!  First we're going to set up our word banks.  We'll make three lists: descriptions (such as 'raw' or 'broiled'), flavors (such as 'cherry' or 'banana'), and type of food (such as 'sandwich' or 'cookie').  How many choices would you like in each list?"
items = gets.chomp
items = items.to_i

until items > 0
  puts "Please enter a number greater than 0!"
  items = gets.chomp
  items = items.to_i
end

puts "Ok, please enter your first description:"
first_desc = gets.chomp
descriptor << first_desc
i = 1
while i < items
  puts "Next description:"
  next_desc = gets.chomp
  descriptor << next_desc
  i = i + 1
end

puts "Ok, please enter your first flavor:"
first_flav = gets.chomp
flavor << first_flav
i = 1
while i < items
  puts "Next flavor:"
  next_flav = gets.chomp
  flavor << next_flav
  i = i + 1
end

puts "Ok, please enter your first food type:"
first_type = gets.chomp
food_type << first_type
i = 1
while i < items
  puts "Next food type:"
  next_type = gets.chomp
  food_type << next_type
  i = i + 1
end


puts "How many items would you like to see on your menu today?"
show = gets.chomp
show = show.to_i

#verify that user entry was valid
until show <= items && show > 0
  puts "Sorry, I can only show between 1 and #{items} items.  How many items would you like?"
  show = gets.chomp
  show = show.to_i
end

puts "Here is your random menu!"

#create arrays to store used numbers so we do not repeat any selections
used_descriptors = []
used_flavors = []
used_food_types = []

#pick one item from each array without any repeats.
#to check for repeats, make an array of already-used numbers for each item.
#keep generating new random numbers until you get one that wasn't already in the array of used items.
#would slow down the bigger the array gets - LATER improve this part
i = 0
while i < show

descriptor_select = rand 0..items-1
  until used_descriptors.include?(descriptor_select) == false
    descriptor_select = rand 0..items-1
  end
  used_descriptors << descriptor_select

flavor_select = rand 0..items-1
  until used_flavors.include?(flavor_select) == false
    flavor_select = rand 0..items-1
  end
  used_flavors << flavor_select

food_type_select = rand 0..items-1
  until used_food_types.include?(food_type_select) == false
    food_type_select = rand 0..items-1
  end
  used_food_types << food_type_select

puts "#{i+1}. " + descriptor[descriptor_select] + " " + flavor[flavor_select] + " " + food_type[food_type_select]

  i = i+1
end

#ORIGINAL VERSION - did not account for repeats
#select one random item from each array (in order)
#i = 0
#while i < num
#  puts "#{i+1}. " + descriptor[rand 0..9].capitalize + " " + flavor[rand 0..9] + " " + food_type[rand 0..9]
#  i = i+1
#end
