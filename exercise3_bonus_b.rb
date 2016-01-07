# Create a banking program that asks the user 5 times to enter a first name, last name, and email. This information should be stored as an array of hashes.

# Also continue with exercise 3: reject a user entering an account if the email address doesn’t have an “@” and doesn’t end in “.com” Prompt the user to try again if this happens.

puts "Welcome to the Banking Program!"
puts "*" * 40
puts ""

accounts = []

1.times do
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
               id: "12345"}

  puts ""
end

input = ""

puts "Please enter your id to see your account information: "

until input == "done"
  input = gets.chomp

  accounts.each_with_index do |user, index|
    if input == accounts[index][:id]
      puts "-" * 40
      puts ""
      puts "FIRST NAME: #{accounts[index][:first_name]}"
      puts "LAST NAME: #{accounts[index][:last_name]}"
      puts "EMAIL: #{accounts[index][:email]}"
      puts "ACCT #: #{accounts[index][:id]}"
      puts ""
      puts "-" * 40
    elsif input == "done"
      break
    elsif input != accounts[index][:id]
      puts "Try again..."
    end
  end

end