
def header
  puts "Student Directory - My Makers Academy Cohort"
  puts "-------------------"
end

def input_students
	students = []
	puts "Please enter first name?"
	name = gets.chomp.capitalize
	puts "Please eneter your last name?"
	lastname = gets.chomp.capitalize
	puts "Where are you from?"
	country = gets.chomp.upcase
	
	name = "NA".to_sym if name.empty?
	lastname = "NA".to_sym if lastname.empty?
	country = "NA".ty_sym if country.empty?

	while !name.empty? do
      students << {:name => name, :lastname => lastname, :country => country, :cohort => :February}
	  puts "Now we have #{students.length} students"
	  name = gets.chomp.capitalize

	  puts "Would you like to add another student? Yes/No"
	  another = gets.chomp.downcase
	if another == "yes"
      puts "Please enter first name?"
	  name = gets.chomp.capitalize
	  puts "Please eneter your last name?"
	  lastname = gets.chomp.capitalize
	  puts "Where are you from?"
	  country = gets.chomp.upcase
	else 
		break
    end
end
students
end

def show(students)
   students.each_with_index do |student, index|
		puts  "#{index += 1}: #{student[:name]} #{student[:lastname]} from #{student[:country]} - (#{student[:cohort]} cohort)".center(400)
	end
end

def footer(students)
  puts "Overall, there are #{students.length} awesome students."
end

students = input_students
header
show(students)
footer(students)