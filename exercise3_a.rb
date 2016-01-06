# Create a banking program that asks the user 5 times to enter a first name, last name, and email. This information should be stored as an array of hashes.
users = {first_name: [], last_name: [], email: []}

5.times do 
  puts "Enter your first name: "
  first_name = gets.chomp
  users[:first_name] << first_name

  puts "Enter your last name: "
  last_name = gets.chomp
  users[:last_name] << last_name

  puts "Enter your email: "
  email = gets.chomp
  users[:email] << email
end

p users