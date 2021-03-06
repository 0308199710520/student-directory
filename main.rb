students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

def printStudents(studentArray)
  studentArray.each_with_index do |student, index|
    p "#{index}: #{student[:name]}, #{student[:cohort]} cohort"
  end
end

def input_students
  students = []

  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end

  return students
end

def footer(studentArray)
  if studentArray.length == 1
    p" overall we have 1 excellent student"
  else
    p "overall we have #{studentArray.length} excellent students"
  end  
end

def header
  p "Welcome to the VILLANs academy"
  p "------------------------------"
end


def startingLetterPrint(studentArray, letter)
  studentArray.each do |student|
    if student[:name][0] == letter
      puts student[:name]
    end
  end

def lengthPrint(studentArray, lengthOfName)
  studentArray.each do |student|
    if student[:name].length == lengthOfName
    puts student[:name]
  end
end

def printWithEach(studentArray)
  x = 0
  while x < studentArray.length
    puts studentArray[x][:name]
    x += 1
  end
end

