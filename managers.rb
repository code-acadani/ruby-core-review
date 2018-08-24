require "./employees.rb"
require "./email_reportable.rb"

module Actualize
	class Manager < Actualize::Employee
		include EmailReportable 

		def initialize(options_hash)
			super
			@employees = options_hash[:employees]
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
end









