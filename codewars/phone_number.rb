=begin

  Write a function that accepts an array of 10 integers 
  (between 0 and 9), that returns a string of those numbers 
  in the form of a phone number.
  createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"


=end


def createPhoneNumber (num_array)

  first_arr = num_array[0..2].join
  second_arr = num_array[3..5].join
  third_arr = num_array[6..9].join

  phone_number = "(#{first_arr}) #{second_arr}-#{third_arr}"

end 

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # "(123) 456-7890"
p createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) #"(111) 111-1111"
p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) #"(123) 456-7890"