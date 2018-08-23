class Employee
	attr_reader :first_name, :last_name, :salary, :active
	attr_writer :first_name, :last_name, :salary, :active

	def initialize(options_hash)
		@first_name = options_hash[:first_name]
		@last_name = options_hash[:last_name]
		@salary = options_hash[:salary]
		@active = options_hash[:active]
	end

	def print_info
		puts "#{first_name} #{last_name} makes #{salary} a year."
	end

	def give_annual_raise
		@salary = 1.05 * @salary
	end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info
# employee1.give_annual_raise
# puts employee1.salary
# puts employee1.first_name
# employee1.active = false
# puts employee1.active
# employee1.last_name = "Campos"
# puts employee1.last_name



class Manager < Employee
	def initialize(options_hash)
		super
		@employees = options_hash[:employees]
	end

	def send_report
		puts "Sending email..."
		# use some email sending library to actually do this
		puts "Email sent!"
	end

	def give_all_raises
		# loop through the @employees array 
		# give each employee in the array a raise using give_annual_raise method
		# i = 0
		# @employees.length.times do
		# 	@employees[i].give_annual_raise
		# 	i += 1
		# end
		@employees.each do |employee|
			employee.give_annual_raise
		end
	end

	def fire_all_employees
		# loop through the @employees array
		# change each employees active status to false
		@employees.each do |employee|
			employee.active = false
		end
	end
end

manager = Manager.new(first_name: "Tayt", last_name: "Bicknell", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
manager.give_all_raises
puts employee1.salary
puts employee2.salary
manager.fire_all_employees
puts employee1.active
puts employee2.active









