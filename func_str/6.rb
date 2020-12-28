=begin
  
We have chars mapping: A => T, C => G. 
You need to create a converter for strings with the results: 
"ATTGC" -> returns "TAACG", "GTAT" -> returns "CATA" 

=end

def string_converter(str)

  conversed_word = ''

  str.each_char do |char|
    case char
    when 'A'
      conversed_word += 'T'
    when 'T'
      conversed_word += 'A'
    when 'G'
      conversed_word += 'C'
    when 'C'
      conversed_word += 'G'
    end
  end

  return conversed_word

end


p string_converter("ATTGC")
p string_converter("GTAT")