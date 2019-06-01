# Euler program 4
require 'date'

start_date = Time.local(1901)
end_date = Time.local(2000, 12, 31)
sunday_counter = 0
while end_date >= start_date
	if end_date.strf("%A") == "Sunday" && end_date.strftime("%d") == "01"
		sunday_counter += 1			
	end
endtime -= 86400 # subtracting 1 day / 86400 seconds
end
p sunday_counter