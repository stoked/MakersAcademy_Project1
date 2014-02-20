
def header
print "Student Directory - My Makers Academy Cohort\n"
print "-------------------\n"
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

def show(students)
  n = 0
  while n < students.length
		print  "#{students[n][:name]} (#{students[n][:cohort]} cohort)\n"
		n += 1
	end
end


def footer(students)
print "Overall, there are #{students.length} awesome students.\n"
end




students = input_students
header
show(students)
footer(students)