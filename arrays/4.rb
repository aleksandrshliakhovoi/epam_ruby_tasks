=begin
  You are going to be given an array of integers. 
  Your job is to take that array and find an index N 
  where the sum of the integers to the left of N is equal to the sum of the integers
   to the right of N. If there is no index that would make this happen, return -1. 
 
  For example: 
  Let's say you are given the array [1,2,3,4,3,2,1] - 
  Your function will return the index 3, because at the 3rd position of the array, 
  the sum of left side of the index ([1,2,3]) and the sum of 
  the right side of the index ([3,2,1]) both equal 6. 
  [1,100,50,-51,1,1] - Your function will return the index 1, 
  because at the 1st position of the array, the sum of left side of the index 
  ([1]) and the sum of the right side of the index ([50,-51,1,1]) both equal 1. 
 
  You need to test the solution on the next arrays:  
  [20,10,-80,10,10,15,35] 
  [10,-80,10,10,15,35] 
=end

test_0 = [1,2,3,4,3,2,1]
test_1 = [20,10,-80,10,10,15,35] 
test_2 = [10,-80,10,10,15,35]
test_3 = [-7, 1, 5, 2, -4, 3, 0]
test_4 = [1,2,3,4,5,6,5,4,3,2,1]
test_5 = [1,100,50,-51,1,1]

def find_equilibrium_index(arr)
  
  index = 0

  while index < arr.length-1 do
    
    right_sum  = arr[0...index].reduce(){|sum, num| sum + num}
    left_sum = arr[index+1..(arr.length-1)].reduce(){|sum, num| sum + num}
    
    if left_sum == right_sum && (left_sum + right_sum) / 2 != 0
      return index
    end
    
    index += 1
    
  end 

  return -1

end

p find_equilibrium_index(test_0)
p find_equilibrium_index(test_1)
p find_equilibrium_index(test_2)
p find_equilibrium_index(test_3)
p find_equilibrium_index(test_4)
p find_equilibrium_index(test_5)