=begin
  
Є масив a = [342, 55, 33, 123, 66, 63, 9];
треба порахувати – скільки всього трійок зустрічається в масиві
  
=end

a = [342, 55, 33, 123, 66, 63, 9]




def count_num(arr)

  count = 0

  string_array = arr.map(&:to_s)

  string_array.each do |item|
    
    item.each_char do |element|

      if element.include? '3'
        count +=1
      end
      
    end

  end

  return count

end


p count_num(a)