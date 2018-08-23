require "./employees.rb"
require "./email_reportable.rb"

module Actualize
	class Intern < Employee
		include EmailReportable 
	end
end

















