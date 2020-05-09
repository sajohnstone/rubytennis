# frozen_string_literal: true

require './lib/tennisscoring'

def greeting()
  hour_of_clock = Time.new.hour
  if hour_of_clock >= 6 && hour_of_clock <= 11
    'Morning'
  elsif hour_of_clock >= 12 && hour_of_clock <= 16
    'Afternoon'
  elsif hour_of_clock >= 17 && hour_of_clock <= 20
    'Evening'
  else
    'Night'
  end
end

def do_scoring()
  tennis_scoring = TennisScoring.new
  match_number = 1
  user_input = ''
  while user_input != 'q'
    puts "Match # #{match_number}"
    puts '  ' + tennis_scoring.show_score
    puts '  Enter a value [1 = Player One Point, 2 = Player Two Point, q = Exit]'
    user_input = gets.chomp
    match_number += 1
    case user_input
    when '1'
      tennis_scoring.score_point(1)
    when '2'
      tennis_scoring.score_point(2)
    when 'q'
      break
    else
      puts '  Please select either 1, 2 or q'
    end
  end
end

puts "Good #{greeting}, Welcome to the Tennis App"
puts '-------------------------------------------'
puts ''
do_scoring
