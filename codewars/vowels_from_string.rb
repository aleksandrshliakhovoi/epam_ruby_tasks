=begin
Return the number (count) of vowels in the given string. 
Vowels - [aeiou],  without y
=end


example_string = 'example string'
second_example = 'aaa hhh jjjj kkk tuout'

def num_vowels_from_string(arg_string)
  vowels_number = arg_string.count 'aeiou'
  return vowels_number
end 

p num_vowels_from_string(example_string) #4
p num_vowels_from_string(second_example) #6