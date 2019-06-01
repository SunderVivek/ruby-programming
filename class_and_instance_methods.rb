#Difference between class methods and instance method
class Invoice

	#class method
	def self.print_out
		p "Printed out invoice"
	end

	#instance
	def convert_to_pdf
		p "Converted to pdf"
	end
end

Invoice.print_out
#Invoice.convert_to_pdf # undefined method `convert_to_pdf' for Invoice:Class (NoMethodError)

i = Invoice.new
i.convert_to_pdf

#i.print_out # undefined method `print_out' for #<Invoice:0x00000000051caa98>