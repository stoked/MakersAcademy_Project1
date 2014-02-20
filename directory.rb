
def header
print "Student Directory - My Makers Academy Cohort\n"
print "-------------------\n"
end

def student_a(student)
	student[:name][0] == "a".capitalize!
end

def show(students)
students.each_with_index do |student, index| 
	if student_a(student) 
		print  "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)\n"
	end
end
end

def footer(students)
print "Overall, there are #{students.length} awesome students.\n"
end


def input_students
	print "Enter the names of the students\n"
	print "Hit return twice when done.\n"
	#create empty array
	students = []
	#get name
	name = gets.chomp.capitalize
	#while name is not empty, repeat
	while !name.empty? do
		#add hash to empty array
		students << {:name => name, :cohort => :February}
		print "Now we have #{students.length} students\n"
		#get another name
		name = gets.chomp.capitalize
	end
	#return array students
	students
end

students = input_students
header
show(students)
footer(students)