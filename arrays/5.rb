=begin
  
You need to find out a unique value in array, you are given arrays: 
- [ 1, 1, 1, 2, 1, 1 ] => 2 
- [ 0, 0, 0.55, 0, 0 ] => 0.55 
- [3,1,5,3,7,4,1,5,7] => 4 

=end

test1 = [ 1, 1, 1, 2, 1, 1 ]
test2 = [ 0, 0, 0.55, 0, 0 ] 
test3 = [3,1,5,3,7,4,1,5,7]

def find_uniq(arr)

  uniq_arr = arr.uniq
  uniq_value = 0

  uniq_arr.each do |item|
    if arr.count(item) < 2
      uniq_value = item
    end
  end

  return uniq_value
end


p find_uniq(test1)
p find_uniq(test2)
p find_uniq(test3)
