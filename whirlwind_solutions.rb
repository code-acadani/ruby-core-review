# 1 
# a

# foods = []
# puts "What are your 5 favorite foods?"
# 5.times do
# 	foods << gets.chomp	
# end

# p foods

# b
# foods.each do |food|
# 	p "I love #{food}"
# end 

# c
# i = 1
# foods.each do |food|
# 	p "#{i}. #{food}"
# 	i += 1
# end 

# foods.each_with_index do |food, i|
# 	i += 1
# 	p "#{i}. #{food}"
# end

# 2
# a
# count = 0
# 11.times do
# 	puts count
# 	count += 1
# end

# c
# result = true

# if result != true 
# 	(true != true) == false

# unless (result == true)
# 	(true == true) == true


# d
# result = nil
# unless result 
# 	puts "Hello!"
# end

# e
# sam_recipes = 11
# sally_languages = 6
# sam_crepes = false
# sally_french = true

# if (sam_recipes > 10) && (sally_languages > 5)
# 	puts "They should date"
# end
# if sam_crepes || sally_french
# 	puts "They should marry"
# end

# 3
# a, b
# people = []

# 5.times do
# 	puts "Enter a first name"
# 	first_name = gets.chomp
# 	puts "Enter a last name"
# 	last_name = gets.chomp
# 	puts "Enter a email name"
# 	email = gets.chomp
# 	# outputs a random 10 digit number
# 	account_no = '%010d' % rand(10 ** 10)
# 	person = {first_name: first_name, last_name: last_name, email: email, account_no: account_no}
# 	people << person
# end
# # p people

# # c
# people.each do |person|
# 	puts "FIRST NAME: #{person[:first_name]}"
# 	puts "LAST NAME: #{person[:last_name]}"
# 	puts "EMAIL: #{person[:email]}"
# 	puts "ACCT #: #{person[:account_no]}"
# end


# 4
# a, b

students = []

puts "How many students are in your class?"
num_students = gets.chomp.to_i

num_students.times do
	puts "Student name:"
	student = gets.chomp
	students << student
end

p students

if num_students.even?
	(num_students/2).times do
		# shift returns and removes the first 2 items from the array
		puts "Group: #{students.shift(2)}"
	end
else
	puts "Group: #{students.shift(3)}"
	(students.length/2).times do
		puts "Group: #{students.shift(2)}"
	end 
end
















