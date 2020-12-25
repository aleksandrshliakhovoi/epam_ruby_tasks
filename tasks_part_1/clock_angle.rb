def clock_angle(hours, minutes)

  while hours != nil && minutes !=nil do

    if hours <= 12 && minutes <=60
      minutes_degree = 360 / 60 #6 every minute
      hours_hand_moves = 30 / 60 #0.5 move hours_hand per_minute
      hours_degree = 360 / 12 #30 every hour
    
      #arg min multiply by minutes 
      minutes_angle = minutes * minutes_degree 
    
      #arg hour hours is sum from add whole hours and hours hand moves in current hour 
      hours_angle = (hours * hours_degree) + (minutes * hours_hand_moves) 
      angle_between = (hours_angle - minutes_angle).abs
      return [angle_between, 360 - angle_between].min
    else
      puts 'Wrong input hours must be between 0 and 12, minutes must be between 0 - 60 '
      puts 'Hello stranger! Tell me please what hour is it now?'
      hours_answer = STDIN.gets.chomp.to_i
      puts 'Ok, now tell me what minute is it now?'
      minutes_answer = STDIN.gets.chomp.to_i
      puts "You tell me  #{hours_answer} hours and #{minutes_answer} minutes"
    end
  end
end


puts 'Hello stranger! Tell me please what hour is it now?'
hours_answer = STDIN.gets.chomp.to_i

puts 'Ok, now tell me what minute is it now?'
minutes_answer = STDIN.gets.chomp.to_i

puts "You tell me  #{hours_answer} hours and #{minutes_answer} minutes"

puts "The angle between hands is #{clock_angle(hours_answer, minutes_answer)}"