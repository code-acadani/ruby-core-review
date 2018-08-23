module EmailReportable
	def send_report
		puts "Sending email..."
		# use some email sending library to actually do this
		puts "Email sent, good job!"
	end
end

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



class Manager < Employee
	include EmailReportable 
	
	def initialize(options_hash)
		super
		@employees = options_hash[:employees]
	end

	def give_all_raises
		@employees.each do |employee|
			employee.give_annual_raise
		end
	end

	def fire_all_employees
		@employees.each do |employee|
			employee.active = false
		end
	end
end

manager = Manager.new(first_name: "Tayt", last_name: "Bicknell", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report



class Intern < Employee
	include EmailReportable 
end
intern = Intern.new(first_name: "Joseph", last_name: "Coyne", salary: 30000, active: true)
intern.print_info
intern.send_report

















