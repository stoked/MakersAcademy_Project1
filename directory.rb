
#header
def header
  puts "Student Directory - My Makers Academy Cohort"
  puts "-------------------"
end

def input_students
	#gets user input
	students = []
	puts "Please enter first name?"
	name = gets.chomp.capitalize
	puts "Please eneter your last name?"
	lastname = gets.chomp.capitalize
	puts "Where are you from?"
	country = gets.chomp.upcase
	puts "What cohort are you attending?"
	cohort = gets.chomp.capitalize
	#default values
	name = "NA".to_sym if name.empty?
	lastname = "NA".to_sym if lastname.empty?
	country = "NA".to_sym if country.empty?
    cohort = "NA".to_sym if cohort.empty?
   
   	while !name.empty? do
      students << {:name => name, :lastname => lastname, :country => country, :cohort => cohort}
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
	  puts "What cohort are you attending?"
	  cohort = gets.chomp.capitalize
	else 
		break
    end
end
students
end

def group(students)
	cohorts = students.map{|student| student[:cohort] }.uniq
	cohorts.each do |cohort|
		puts "The students for the #{cohort} cohort are:"
		puts
		students.each_with_index { |student, index| puts "#{index += 1}. #{student[:name]} #{student[:lastname]} from #{student[:country]}- (#{student[:cohort]} cohort)" if student[:cohort] == cohort }
	end
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
group(students)
footer(students)