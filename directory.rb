def input_students
  students = []
  puts "Do you want to enter a student?(y/n)"
  choice = gets.chomp
  while choice == "y" do
    puts "Enter name"
    name = gets.chomp
    puts "Enter country of birth"
    country = gets.chomp
    puts "Enter height(cm)"
    height = gets.chomp
    puts "Enter favourite hobby"
    hobby = gets.chomp
    students << {name: name, country: country, height: height, hobby: hobby, cohort: :november}
    puts "Do you want to enter another student?(y/n)"
    answer = gets.chomp
    if answer != "y"
      return students
    end
  end
  return students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  while students.length != 0 do
    students.each.with_index(1) do |student, index|
      puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
    break
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)