=begin
  Given an integral number, determine if it's a square number:
  In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.
  The tests will always use some integral number, so don't worry about that in dynamic typed languages.
=end

def is_square(x)
  if x >= 0 && Math.sqrt(x.abs).to_r.denominator == 1
    return true
  else
    return false
  end
end

p is_square(-1)