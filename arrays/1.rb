=begin

Є масив з довільними числами. 
Зробіть так, щоб елемент повторився в масиві таку кількість разів яка відповідає його числу. 
Приклад: [1, 3, 2, 4] 
перетворюється в [1, 3, 3, 3, 2, 2, 4, 4, 4, 4]. 

=end

testArray = [1, 3, 2, 4] 

def multiple_array(array)
  resultArray = []
  
  array.each do |item|   
    myarray = Array.new(item, item.to_i)
    resultArray += myarray
  end

  return resultArray
end

p multiple_array(testArray)