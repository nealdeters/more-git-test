favorite_foods = []

puts "Enter your 5 favorite foods: "

5.times do |food|
  food = gets.chomp
  favorite_foods << food
end

p favorite_foods