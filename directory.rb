
students = [
  {:name => "Mario Gintili", :cohort => :February},
  {:name => "Mikhail Dubov", :cohort => :February},
  {:name => "Karolis Noreika", :cohort => :February},
  {:name => "Michael Sidon", :cohort => :February},
  {:name => "Charles De Barros", :cohort => :February},
  {:name => "Ruslan Vikhor", :cohort => :February},
  {:name => "Toby Retallick", :cohort => :February},
  {:name => "Mark Mekhaiel", :cohort => :February},
  {:name => "Sarah Young", :cohort => :February},
  {:name => "Hannah Wight", :cohort => :February},
  {:name => "Khushkaran Singh", :cohort => :February},
  {:name => "Rick brunstedt", :cohort => :February},
  {:name => "Manjit Singh", :cohort => :February},
  {:name => "Ross Hepburn", :cohort => :February},
  {:name => "Tiffanie Chia", :cohort => :February},
  {:name => "Matthew Thomas", :cohort => :February},
  {:name => "Freddy McGroarty", :cohort => :February},
  {:name => "Tyler Rollins", :cohort => :February}, 
  {:name => "Richard Curteis", :cohort => :February}, 
  {:name => "Anna Yanova", :cohort => :February},
  {:name => "Andrew Cumine", :cohort => :February}
]
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

header
print(students)
footer(students)
