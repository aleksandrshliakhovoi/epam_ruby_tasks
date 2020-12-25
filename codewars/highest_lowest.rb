=begin

In this little assignment you are given a string of space separated numbers, 
and have to return the highest and lowest number.

=end

def high_and_low(num_string)
  
  max_value = 0
  min_value = 0
 
  if num_string.match /\d/
    arr_from_string = num_string.split(' ').map{|item| item.to_i}
    
    min_value = arr_from_string.min
    max_value = arr_from_string.max

    return max_value.to_s + " " + min_value.to_s
  else
    return false  
  end
end

puts high_and_low("1 2 3 4 5")  # return "5 1"
puts high_and_low("1 2 -3 4 5") # return "5 -3"
puts high_and_low("1 9 3 4 -5") # return "9 -5"
