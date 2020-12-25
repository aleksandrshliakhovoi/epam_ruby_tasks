=begin
Compare two strings by comparing the sum of their values (ASCII character code).
For comparing treat all letters as UpperCase.

Null-Strings should be treated as if they are empty strings.
If the string contains other characters than letters, treat the whole string as it would be empty.

Your method should return true, if the strings are equal and false if they are not equal.
=end

def strings_compare(str1, str2)
  sum_str1 = 0
  sum_str2 = 0
  
  if (str1 != nil && str1[/[a-zA-Z_]/]) && (str2 != nil && str2[/[a-zA-Z_]/])

    str1.upcase.each_byte do |c|
      sum_str1 += c
    end
    str2.upcase.each_byte do |c|
      sum_str2 += c
    end
  elsif str1 == nil || str1 != str1[/[a-zA-Z_]/]
    sum_str1 = 0
  elsif str2 == nil || str2 != str2[/[a-zA-Z_]/]  
    sum_str2 = 0
  end

  if sum_str1 == sum_str2 
    return true
  else
    return false
  end
end


p strings_compare("AD","BC") # => equal
p strings_compare("AD","DD") # => not equal
p strings_compare("gf","FG") # => equal
p strings_compare("zz1","") # => equal
p strings_compare("ZzZz", "ffPFF") # => equal
p strings_compare("kl", "lz") # => not equal
p strings_compare(nil, "") # => equal