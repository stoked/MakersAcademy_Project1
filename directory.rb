
students = [
  "Mario Gintili",
  "Mikhail Dubov",
  "Karolis Noreika",
  "Michael Sidon",
  "Charles De Barros",
  "Ruslan Vikhor",
  "Toby Retallick",
  "Mark Mekhaiel",
  "Sarah Young",
  "Hannah Wight",
  "Khushkaran Singh",
  "Rick brunstedt",
  "Manjit Singh",
  "Ross Hepburn",
  "Tiffanie Chia",
  "Matthew Thomas",
  "Freddy McGroarty",
  "Tyler Rollins",
  "Richard Curteis",
  "Anna Yanova",
  "Andrew Cumine"
]
def header
puts "Student Directory - My Makers Academy Cohort"
puts "-------------------"
end

def print(names)
names.each { |name| puts name }
end

def footer(names)
puts "Overall, there are #{names.length} awesome students."
end

header
print(students)
footer(students)
