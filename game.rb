require './player'
require './turn'

class Game
  def initialize
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
    @round = Round.new(@player1, @player2)
    puts "Game started!"
    until @player1.lives == 0 || @player2.lives == 0
      @round.turn
    end
    winner
  end

  def winner
    winner = @player1.lives == 0 ? @player2 : @player1
    puts "#{winner.name} has won with #{winner.lives}/3 lives left! Congrats!"
    puts "----- Game Over! -----"
  end
end


#game starts
#players are defined
#turn starts
#math things
#requests input from current player
#compares input with math
#if correct, continue
#else deduct life, continue
#next turn

