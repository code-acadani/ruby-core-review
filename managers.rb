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

# employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
# employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
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
	def send_report
		puts "Sending email..."
		# use some email sending library to actually do this
		puts "Email sent!"
	end
end

manager = Manager.new(first_name: "Tayt", last_name: "Bicknell", salary: 100000, active: true)
manager.print_info
manager.send_report









