favorite_foods = []
counter = 1

5.times do |food|
  puts "enter a food"
  food = gets.chomp
  favorite_foods << food
end


favorite_foods.each do |food|
  puts "#{counter}. #{food}"
  counter += 1
end