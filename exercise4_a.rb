# Create the same program that was used to put your class into groups! Have the program request the user to enter each student’s names.  Assume the classroom has an even number of students, so there are only groups of two. For example, you can have the program output groups like so:
#   Group: Hermione Seamus
#       Group: Lucius Cho
#       Group: Sirius Luna
#       Group: Severus Draco
students = []
input = ""

puts "Please enter all of your students names: "

until input == "done"
  input = gets.chomp

  if input == "done" 
    break
  else
    students << input
  end

end

#group the students by 2's
students.shuffle!
# students.each_slice!(2).to_a
students.each do |student|
  puts "Group: #{students[student]} #{students[student]}"
end

#randomize the students

p students