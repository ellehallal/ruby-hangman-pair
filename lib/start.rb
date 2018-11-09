class Start
  require 'game'

  def initialize(play_again="Y")
    @play_again = play_again
  end

  def play_game
    while @play_again == "Y"
      Game.new.play
      puts "Play again?"
      print "> "
      @play_again = gets.chomp.upcase
    end
    puts "Thanks for playing Hangman! Created by Derek Baker and Elle Hallal"
  end

end
