=begin
  Якщо змінна a більша нуля і менша 5-ти, то вивести 'Вірно', 
  інакше вивести 'Невірно'. Перевірте роботу скрипта при a,
   зі значеннями - 5, 0, -3, 2
=end


def check_number(num)
  if(num > 0 && num < 5)
    puts 'Вірно' 
  else
    puts 'Невірно' 
  end
end

arr =  [- 5, 0, -3, 2]

arr.each{|item| check_number(item)}
