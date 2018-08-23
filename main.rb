require "./employees"
require "./email_reportable.rb"
require "./managers.rb"
require "./interns.rb"

employee1 = Actualize::Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Actualize::Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info
employee1.give_annual_raise
puts employee1.salary
puts employee1.first_name
employee1.active = false
puts employee1.active
employee1.last_name = "Campos"
puts employee1.last_name

manager = Actualize::Manager.new(first_name: "Tayt", last_name: "Bicknell", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
manager.give_all_raises
puts employee1.salary
puts employee2.salary
manager.fire_all_employees
puts employee1.active
puts employee2.active

intern = Actualize::Intern.new(first_name: "Joseph", last_name: "Coyne", salary: 30000, active: true)
intern.print_info
intern.send_report
