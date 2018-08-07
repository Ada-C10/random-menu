def input(string)
  puts ( "#{string}" )
  gets.chomp
end


puts "Welcome to the random food menu!"
puts "***" * 20
print "How many random foods do you want to create (1-10)?:  "
user_request = gets.chomp.to_i

if user_request > 10 || user_request == 0
  puts "That is not a number between 1 and 10, try again!"
end

adjective = []
cooking_style = []
food = []

counter = 1
while counter <= user_request
  adjective << input("Give me one adjective: ")
  cooking_style << input("Give me one cooking method: ")
  food << input("Give me one food!: ")
  counter += 1
end

counter = 1
  while counter < user_request + 1
    random_adjective = adjective.sample
    random_cooking_style = cooking_style.sample
    random_food = food.sample
    puts "#{counter}. #{random_adjective} #{random_cooking_style} #{random_food} "
    counter +=1
  end

#This code includes the optional enhancements of having the user decided how many
#pairings they will create and what words will be used. I have specified that the
#user must pick between 1 and 10 inputs.
