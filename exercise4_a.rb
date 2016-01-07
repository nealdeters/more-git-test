# Create the same program that was used to put your class into groups! Have the program request the user to enter each student’s names.  Assume the classroom has an even number of students, so there are only groups of two. For example, you can have the program output groups like so:
#   Group: Hermione Seamus
#       Group: Lucius Cho
#       Group: Sirius Luna
#       Group: Severus Draco

#Collect a list of names
students = []
input = ""

puts "Please enter all of your students names: "

until input == "done"
  unless input == ""
    students << input
  end

  input = gets.chomp
end

#shuffle the list of names
mixed_students = students.shuffle

#group names together by 2's
#when i have an odd number of names, the last group should be a group of 3

until mixed_students.length == 0

  group = mixed_students.pop(2)

  print "Group: "
  group.each do |member|
    print "#{member} "
  end
  puts ""
  print "\n"
end

#p mixed_students