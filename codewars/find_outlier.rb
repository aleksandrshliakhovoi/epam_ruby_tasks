=begin

You are given an array (which will have a length of at least 3, 
but could be very large) containing integers. 
The array is either entirely comprised of odd integers or 
entirely comprised of even integers except for a single integer N. 
Write a method that takes the array as an argument 
and returns this "outlier" N.

=end


def find_outlier(integers)

  odd = integers.find_all{|item| !item.even?}
  even = integers.find_all{|item| !item.odd?}

  if even.size === 1
    return even[0]
  elsif odd.size === 1
    return odd[0]
  end
end



p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) #11
p find_outlier([3, 1719, 19, 160, 11, 13, -21]) #160
p find_outlier([0, 1, 2]) #1
p find_outlier([1, 2, 3]) #2
p find_outlier([2,6,8,10,3]) #3