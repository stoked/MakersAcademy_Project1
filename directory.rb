#Student Directory 2 - MA Projects

def header
  puts "Student Directory - My Makers Academy Cohort"
  puts "-------------------"
end
puts "Please enter the requested information."
puts "To finish, just hit return twice."
def input_students
	
	students = []
	puts "Please enter first name?"
	name = gets.capitalize.delete "\n"
	puts "Please eneter your last name?"
	lastname = gets.capitalize.delete "\n"
	puts "Where are you from?"
	country = gets.upcase.delete "\n"
	puts "What cohort are you attending?"
	cohort = gets.capitalize.delete "\n"
	
	name = "NA".to_sym if name.empty?
	lastname = "NA".to_sym if lastname.empty?
	country = "NA".to_sym if country.empty?
    cohort = "NA".to_sym if cohort.empty?
   
   	while !name.empty? do
      students << {:name => name, :lastname => lastname, :country => country, :cohort => cohort}
	  if students.length < 2
	  	puts "Now we have #{students.length} student"
      else 
	    puts "Now we have #{students.length} students"
	    name = gets.capitalize.delete "\n"
	   end
	  
	  puts "Would you like to add another student? Yes/No"
	  another = gets.downcase.delete "\n"
	
	if another == "yes"
      puts "Please enter first name?"
	  name = gets.capitalize.delete "\n"
	  puts "Please eneter your last name?"
	  lastname = gets.capitalize.delete "\n"
	  puts "Where are you from?"
	  country = gets.upcase.delete "\n"
	  puts "What cohort are you attending?"
	  cohort = gets.capitalize.delete "\n"
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

def footer(students)
  if students.length < 2 
  	puts "Overall, there is #{students.length} amazing student!"
  else
    puts "Overall, there are #{students.length} awesome students!"
end
end

students = input_students
  if !students.empty?
    header
    group(students)
    footer(students)
  else 
	puts "ERROR!!! ABORT! ABORT!"
  end