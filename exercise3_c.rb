# Create a banking program that asks the user 5 times to enter a first name, last name, and email. This information should be stored as an array of hashes.

# Each person should automatically be given an account number which is a randomized ten digit number.

# After the user is finished, the program should print out all the users, for example:
# FIRST NAME: Joan
# LAST NAME: Kelson
# EMAIL: jkelson@juno.com
# ACCT #: 2372041038
# and so on for all the users.

puts "Welcome to the Banking Program!"
puts "*" * 40
puts ""

accounts = []

5.times do
  print "Enter account holder's first name: "
  first_name = gets.chomp

  print "Enter account holder's last name: "
  last_name = gets.chomp

  email = ""
  until email.include?("@") && email.end_with?(".com")
    print "Enter account holder's e-mail: "
    email = gets.chomp
  end

  accounts << {first_name: first_name,
               last_name: last_name,
               email: email,
               id: Random.rand(10**10)}

  puts ""
end

accounts.each_with_index do |user, index|
  puts "FIRST NAME: #{accounts[index][:first_name]}"
  puts "LAST NAME: #{accounts[index][:last_name]}"
  puts "EMAIL: #{accounts[index][:email]}"
  puts "ACCT #: #{accounts[index][:id]}"
  puts ""
  puts "-" * 40
end
