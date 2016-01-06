# Translate the following into ruby code. Run the program to make sure it works:
# If Sam can cook more than 10 recipes and Sally speaks more than 5 languages, they should date. If Sam can make crepes or Sally can speak French, they should marry. 

sam = ["crepes", "lasagna", "rice", "pizza", "chicken", "pasta", "salmon", "steak"]

sally = ["french", "italian", "spanish", "english", "dutch", "german"]

if sam.length > 10 && sally.length > 5
  puts "they should date"
elsif sam.include?("crepes") || sally.include?("french")
  puts "they should marry"
else
  puts "they shouldn't do either"
end