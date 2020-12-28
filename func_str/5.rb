=begin
  
My friend wants a new band name for her band. 

She likes bands that use the formula:

'The' + a noun with first letter capitalized. 

However, when a noun STARTS and ENDS with the same letter, 

she likes to repeat the noun twice and connect them together 
with the first and last letter, combined into one word like so 
(WITHOUT a 'The' in front):

dolphin -> The Dolphin
alaska -> Alaskalaska
europe -> Europeurope


=end

test_1 = 'dolphin'
test_2 = 'alaska'
test_3 = 'europe'

def create_band_name(str)

  if str[0] == str[str.length - 1]
    return str.capitalize + str
  else
    return 'The ' + str.capitalize!
  end
end

p create_band_name(test_1)
p create_band_name(test_2)
p create_band_name(test_3)