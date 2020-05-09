# frozen_string_literal: true

# Keeps the score of a game of tennis
class TennisScoring
  @player_one_score = 0
  @player_two_score = 0

  def initialize
    @player_one_score = 0
    @player_two_score = 0
  end

  def score_point(player_number)
    if player_number == 1
      @player_one_score += 1
    elsif player_number == 2
      @player_two_score += 1
    else raise 'Error Message'
    end
  end

  def show_score
    "#{@player_one_score} #{@player_two_score}"
  end
end
