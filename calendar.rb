require "date"

class Calendar
  DEFAULT_DATE = Date.today
  
  attr_reader :target_date
  
  def initialize(target_date = DEFAULT_DATE)
    @target_date = target_date
  end
  
  def print_calendar
    #中央揃えした年月を出力
    puts @target_date.strftime('%B %Y').center(20)
    
    puts "Su Mo Tu We Th Fr Sa"
    
    this_year = @target_date.year
    this_month = @target_date.month
    first_day = Date.new(this_year, this_month, 1)
    last_day = Date.new(this_month, this_month, -1)
    
    first_day_wday = first_day.wday
    blank = '   ' * first_day_wday
    print blank
    
    print_date(last_day, first_day_wday)
  end
  
  private
  
  def print_date(last_day, first_day_wday)
    (1..last_day.day).each do |day|
      printf('%2d ', day)
      puts "\n" if ((first_day_wday + day) % 7).zero?
    end
    puts "\n"
  end
end

this_month_calendar = Calendar.new
this_month_calendar.print_calendar
#puts "#{Date.today.strftime('%B')} #{Date.today.strftime('%Y')}"

#puts "Su Mo Tu We Th Fr Sa"

#count = 1

#while count <= 31
 # if count <= 9 
  #  print " #{count} "
  #else
  #  print "#{count} "
 # end
  
 # if count % 7 == 0
  #  puts "\n"
 # end
 # count += 1
#end
