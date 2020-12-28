=begin
  
Є масив a = [342, 55, 33, 123, 66, 63, 9];
 потрібно вивести на екран тільки ті числа в яких є '3'
  
=end

a = [342, 55, 33, 123, 66, 63, 9]

handle_array = a.map(&:to_s).select{|item| item.include? '3'}

p handle_array.map!(&:to_i)


