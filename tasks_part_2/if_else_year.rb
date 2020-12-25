=begin
  В змінній year збігається рік. 
  Визначте чи є він високосним. Рік буде високосним в двох випадках: 
  або він ділиться на 4,
  але при цьому не ділиться на 100, або ділиться на 400.
=end


rand_year = rand(2000..2021)

def leap_year (year)
  if year % 4 == 0 && year % 100 !=0
    p year
    puts 'Its Leap year'
  else 
    p year
    puts 'Its not a Leap year'
  end
end

leap_year (rand_year)