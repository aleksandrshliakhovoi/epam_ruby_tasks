=begin 
  Є рядок з 6-ти чисел наприклад: (385934). 
  Перевірте, чи сума перших трьох чисел дорівнює сумі других трьох чисел.
  Якщо це так – виведіть 'так' інакше – 'ні'.  
=end

rand_num = rand(100000..999999)

def check_sum(num)

  num = num.to_s  
  arr_from_string = num.split('')
  arr_from_string.map!{|item| item.to_i}

  p arr_from_string
  first_sum = arr_from_string[0] + arr_from_string[1] + arr_from_string[2]
  second_sum = arr_from_string[3] + arr_from_string[4] + arr_from_string[5]

  if(first_sum == second_sum)
    puts 'так'
  else
    puts 'ні'
  end
end


check_sum(rand_num)
check_sum(111111)