=begin
  
Є рядок наступного вигляду: 4 літери, потім пробіл, потім ще 4 літери. 
Наприклад, такий рядок 'ФЫВА олдж'. 
Треба перетворити на наступний рядок 'АВЫФ ждло'. !!!! UTF-8  

=end

def reverse_string(str)

  if(str.length == 9)
 
    sub_str1 = str[0,4].encode('UTF-8').reverse!
    sub_str2 = str[5,4].encode('UTF-8').reverse!
    
    return sub_str1 + " " + sub_str2
  
  else

    return false
  
  end

end

p reverse_string('ФЫВА олдж')


