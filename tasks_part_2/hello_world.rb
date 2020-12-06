=begin
  Створити змінну var і призначити їй значення 'hello'. 
  Звертаючись до окремих символів цього рядка – вивести на екран символ 'h', 
  символ 'e', символ 'o'.
=end


text1 = 'Hello'
text2 = 'World'


def word_from_chars(*arg)
  if(arg[0] != nil)
  initial = 0
    while initial < arg[0].size
      puts arg[0][initial]
      initial += 1 
    end  
  end
end

var = word_from_chars(text1, text2)



