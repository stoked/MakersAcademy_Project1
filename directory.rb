
def header
puts "Student Directory - My Makers Academy Cohort"
puts "-------------------"
end

def print(students)
students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def footer(students)
puts "Overall, there are #{students.length} awesome students."
end


def input_students
	puts "Enter the names of the students"
	puts "Hit return twice when done."
	#create empty array
	students = []
	#get name
	name = gets.chomp
	#while name is not empty, repeat
	while !name.empty? do
		#add hash to empty array
		students << {:name => name, :cohort => :February}
		puts "Now we have #{students.length} students"
		#get another name
		name = gets.chomp
	end
	#return array students
	students
end

students = input_students
header
print(students)
footer(students)

