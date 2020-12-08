=begin
  Змінна min має число від 0 до 59. 
  Визначити в яку чверть години потрапляє число, відповідно вивести на екран 
  одне з значень: «перша», «друга», «третя»б «четверта».
=end

min = rand(59)

def find_hour_part(number)

  num = (number).abs

  case num
  when 0...16
    p num
    puts 'перша'
  when 16...31 
    p num
    puts 'друга'
  when 31...46
    p num
    puts'третя'
  when 46..59
    p num
    puts 'четверта'
  end

end
  
find_hour_part(min)
