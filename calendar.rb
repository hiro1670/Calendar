require "date"

year_month = "#{Date.today.strftime('%B')} #{Date.today.strftime('%Y')}"
puts year_month.center(20)

this_year = Date.today.year
this_month = Date.today.month
first_day = Date.new(this_year, this_month,1)
last_day = Date.new(this_year, this_month,-1)
wday_first = first_day.wday
blank = "   " * wday_first

puts "Su Mo Tu We Th Fr Sa"
print blank
(first_day.day..last_day.day).each{ |day|
  if day <= 9
    print " #{day} "
  else
    print "#{day } "
  end
  
  if (wday_first + day) % 7 == 0
    puts "\n"
  end
}