=begin

 Є масив:  
temperatures = [33, 15, 17, 20, 23, 23, 28, 40, 21, 19, 
  31, 18, 30, 31, 28, 23, 19, 28, 27, 30, 39, 17, 17, 20, 19, 23, 
  28, 30, 34, 28]
Знайти три найменших значення, три найбільших і три середніх. 
  
=end

# для розрахунку дублі не видалялися з первинного масиву 
# для розрахунку унікальних даних на вхідний масив було б застосовано
# метод uniq

temperatures = [33, 15, 17, 20, 23, 23, 28, 40, 21, 
  19, 31, 18, 30, 31, 28, 23, 19, 28, 27, 30, 39, 17, 
  17, 20, 19, 23, 28, 30, 34, 28]

def find_temperature_values(temperatures_arr)

  min_1 = temperatures_arr.min
  max_1 = temperatures_arr.max
  avg_1 = find_avg(temperatures_arr)
  
  temperatures_arr.delete_at(temperatures_arr.index(min_1))
  temperatures_arr.delete_at(temperatures_arr.index(max_1))
  
  min_2 = temperatures_arr.min
  max_2 = temperatures_arr.max
  avg_2 = find_avg(temperatures_arr)

  temperatures_arr.delete_at(temperatures_arr.index(min_2))
  temperatures_arr.delete_at(temperatures_arr.index(max_2))
  
  min_3 = temperatures_arr.min
  max_3 = temperatures_arr.max
  avg_3 = find_avg(temperatures_arr)

  puts "min_1 - #{min_1}, max_1 - #{max_1}, avg_1 - #{avg_1}"
  puts "min_2 - #{min_2}, max_2 - #{max_2}, avg_2 - #{avg_2}"
  puts "min_3 - #{min_3}, max_3 - #{max_3}, avg_3 - #{avg_3}"
end

def find_avg(array)

  sum = array.reduce(0) {|sum, num| sum + num}
  avg = sum / array.size

end

find_temperature_values(temperatures)

p temperatures



