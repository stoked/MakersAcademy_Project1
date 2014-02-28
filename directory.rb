#Student Directory 2 - MA Projects
@students = []

def save_students
	file = File.open("students.csv", "w")
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def menu
	puts
	puts "1. Input students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "9. Exit"
end

def show_students
	header
    student_list
    footer
end

def interactive_menu
	loop do
		menu
		process(gets.chomp)
	end
end

def process(selection)
      case selection
      when "1"
      	input_students
      when "2"
      	show_students
      when "3"
      	save_students
      when "9"
      	exit
      else puts "I don't know what you meant...Try Again!"
      end
end

def header
  puts "Student Directory - My Makers Academy Cohort"
  puts "-------------------"
end
puts
puts "What would you like to do? Please enter number (i.e. 1)"
puts "To finish, just hit return twice."
def input_students
	
	
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
      @students << {:name => name, :lastname => lastname, :country => country, :cohort => cohort}
	  if @students.length < 2
	  	puts "Now we have #{@students.length} student"
      else 
	    puts "Now we have #{@students.length} students"
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
@students
end

def student_list
	cohorts = @students.map{|student| student[:cohort] }.uniq
	cohorts.each do |cohort|
		puts "The students for the #{cohort} cohort are:"
		puts
		@students.each_with_index { |student, index| puts "#{index += 1}. #{student[:name]} #{student[:lastname]} from #{student[:country]}- (#{student[:cohort]} cohort)" if student[:cohort] == cohort }
	end
end

def footer
  if @students.length < 2 
  	puts "Overall, there is #{@students.length} amazing student!"
  else
    puts "Overall, there are #{@students.length} awesome students!"
end
end

students = interactive_menu
  if !students.empty?
    header
    group
    footer
  else 
	puts "ERROR!!! ABORT! ABORT!"
  end