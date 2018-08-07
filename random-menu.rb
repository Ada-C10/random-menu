menu_one = ["Hot", "Cold", "Soft", "Cheesy","Chewy", "Crispy", "Tender", "Crunchy","Sticky", "Day-old"]
menu_two = ["fried","sauteed","steamed","broiled", "bbq-ed", "baked", "boiled","seared","frosted", "jelly-filled"]
menu_three = ["fish", "chicken", "shrimp","tofu", "hamburger", "steak","pork chop", "veggie burger", "pad thai", "tacos"]

print "Is there anything you are in the mood for? "
user_choice_1 = gets.chomp.to_s
if user_choice_1 == "no"
  puts "okay"
else
menu_three << user_choice_1
end 

# puts "Here is your random menu! Do enjoy!"
print "How many items would you like to see (1-10): "
menu_num = gets.chomp.to_i
if menu_num >= 11
  print "That is too many items. Please choose a number between 1-10: "
  menu_num = gets.chomp.to_i
end

puts "1. #{menu_one.delete(menu_one.sample)} #{menu_two.delete(menu_two.sample)} #{menu_three.delete(menu_three.last)}"
i = 2
(menu_num - 1).times do
  puts "#{i}. #{menu_one.delete(menu_one.sample)} #{menu_two.delete(menu_two.sample)} #{menu_three.delete(menu_three.sample)}"
  i += 1
end
puts "Would you like fries with that?"
