#3 arrays - 2 descriptors, 1 food - 10 items each = yes
#optionally, have user choose # of items = yes
#optionally, once an adjective is used, remove from array (no repeats) = yes
#optionally, accept user input for adjectives and food = YES!!
#concact into string = yes
#display options in numbered ordered, numbered list = yes
#BE SURE that first items in arrays are used as well as rest = yes


#METHOD for splittling string by comma or space and  into an array
#replacing old array with new array info

def replace_array(string, length, array_name) #cannot go over or under menu_amount
  array_name.clear #clears data in the array
  user_array = string.split(/[\s.,]+/) #splits at spaces, commas, periods/does not include them in array
#what to do if too little or too many adjectives are entered
   if user_array.length < length
     puts "***!!Not enough items. Please give me #{length} items.***"
      new_list = gets.chomp
        replace_array(new_list, length, array_name)
      array_name << user_array
    elsif user_array.length > length
      puts "***Too many items. Extra items will be removed.***"
        until user_array.length == length
          user_array.pop() #removes last item in array until length is matched
          end
        array_name << user_array
    else array_name << user_array
   end
   array_name.flatten! #the array becomes nested, must revert to one-dimensional array
end

def input_marker
  print ">> "
end

food_adj = ["sweet", "savory", "salty", "smokey", "spicy", "gooey", "creamy", "crunchy", "bitter", "sour"]
food_style = ["baked", "barbequed", "fermented", "poached", "braised", "stewed", "fried", "sauteed", "roasted", "boiled"]
food_name = ["tofu", "duck", "chicken", "eggs", "shrimp", "lobster", "spinach", "eggplant", "clams", "salmon"]

puts "/\\" * 15 #top border
puts "LEANNE'S MAGICAL MENU CREATOR"
puts "\\/" * 15 #lower border
puts "\n" #to separate welcome from program :)
puts "How many items would you like?"
#ask for number of items up to 10
#if more or less than ten, display error
menu_amount = gets.chomp.to_i

#continue loop until input is 1 - menu_amount

until menu_amount > 1 && menu_amount < food_name.length+1 #until user input equals exclusive from 1 to food_name.length + 1
  if menu_amount < 1
    puts "Oops, that doesn't work."
    puts "Please choose a number from 1 to " + food_name.length.to_s + "."
    menu_amount = gets.chomp.to_i
  elsif
    menu_amount > food_name.length
    puts "Please choose a number from 1 to " + food_name.length.to_s + "."
    menu_amount = gets.chomp.to_i
 end
end


#allow user to create own arrays
puts "Use default menu items?"
print "(Y/N)? >> "
no_default = false
answer = gets.chomp.downcase #to compare below
  if answer == "n" || answer == "no"
    no_default = true
  end

#according to user's choice:

if no_default == false
  puts "...Using default menu..."
elsif no_default == true
  #can method below to prevent repeating code?? 
  puts "Please enter #{menu_amount} adjectives separated by a space."
  input_marker #so user knows to type...
  adjectives = gets.chomp
  replace_array(adjectives, menu_amount, food_adj)

  puts "Please enter #{menu_amount} cooking styles separated by a space."
  input_marker
  styles = gets.chomp
  replace_array(styles, menu_amount, food_style)

  puts "Please enter #{menu_amount} foods separated by a space."
  input_marker
  foods = gets.chomp
  replace_array(foods, menu_amount, food_name)

end

menu_num = 1 #for ordering the menu in a numbered list

puts "\n" #just some space
puts "Here is your menu:"
puts "_.-." * 8 + "_" #just a border
menu_amount.times do

  adj_num = rand(food_adj.length) #random number size of array
  style_num = rand(food_style.length)
  name_num = rand(food_name.length)

  menu_item = food_adj[adj_num] + " " + food_style[style_num] + " " + food_name[name_num]

  puts "#{menu_num}.  #{+ menu_item }" #display string of menu items

  menu_num += 1 #adds one for next item in list

  #below removes items in each array to prevent duplicates
  food_name.delete_at(name_num)
  food_style.delete_at(style_num)
  food_adj.delete_at(adj_num)

end
puts "_.-." * 8 + "_" #just a border
puts "\n" #just a newline space
puts "BON APPETIT!"
