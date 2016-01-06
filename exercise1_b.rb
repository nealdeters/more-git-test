favorite_foods = []

5.times do |food|
  puts "enter a food"
  food = gets.chomp
  favorite_foods << food
end

favorite_foods.each do |food|
  puts "I love #{food}"
end