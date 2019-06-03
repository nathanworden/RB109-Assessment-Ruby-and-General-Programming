# Write a method that returns the number of Friday the 13ths in the year
# passed in as an argument. You amy assume that the year is greater than 
# 1752 (when the modern Gregorian Calendar was adobpted by the United 
# Kingdom), and you may assume that the same calendar will remain in use
# for the foreseeable future.

# Examples
# friday_13th?(2015) == 3
# friday_13th?(1986) == 1

# Hint: Ruby's Date class could be helpful here

# Look at how to initialize a Date object
# look at he 'Friday?' method


#  This is a helpful post on Stack Overflow regarding how to get the 
# number of days in a given month and year:
# https://stackoverflow.com/questions/1489826/how-to-get-the-number-of-days-in-a-given-month-in-ruby-accounting-for-year

require 'date'

def friday_13th?(year)
  list_of_fri_13ths = []
  1.upto(12) do |current_month|
    days_in_current_month = Date.new(year, current_month, - 1).day
    (1..days_in_current_month).each do |current_day|
      date = Date.new(year, current_month, current_day)
      list_of_fri_13ths << date if date.friday? && date.mday == 13
    end
  end
  list_of_fri_13ths.size
end

p friday_13th?(2019) == 2
p friday_13th?(2018) == 2
p friday_13th?(2017) == 2
p friday_13th?(2016) == 1
p friday_13th?(2015) == 3
p friday_13th?(2014) == 1
p friday_13th?(1986) == 1




# student answer
# def friday_13th?(year)
#   friday_13ths = 0
#   (1..12).each do |month|
#     friday_13ths += 1 if Date.new(year, month, 13).wday == 5
#   end
#   friday_13ths
# end

# p friday_13th?(2019) == 2
# p friday_13th?(2018) == 2
# p friday_13th?(2017) == 2
# p friday_13th?(2016) == 1
# p friday_13th?(2015) == 3
# p friday_13th?(2014) == 1
# p friday_13th?(1986) == 1




