#if result != true

#if it's not true


#and you replace it with this line:
#  unless result == true
#will the code run the same as before? Yes or No?

#Yes

result = false

if result != true
  puts "hello"
end

unless result == true
  puts "hello"
end