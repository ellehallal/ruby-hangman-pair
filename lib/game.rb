require 'display'
require 'word'

class Game

  attr_reader :display, :word, :lives

  def initialize(display=Display.new, word=Word.new())
    @display = display
    @word = word

  end

  def play
    # play_again = "Y"
    # while play_again == "Y"
      puts @display.intro
      puts @display.game_rules
      until @word.solved? || @word.lives == 0
        puts "Guess a letter"
        print "> "
        letter = gets.chomp.downcase
        @word.add_guess(letter)
      end

      if @word.solved?
        puts "#{@word.show_answer}"
        puts @display.winner
      else
        puts @display.loser
      end

    # puts "Play again? Y / N"
    # print "> "
    # play_again = gets.chomp.upcase
    # end
    # puts "Thanks for playing Hangman Created by Elle Hallal and Derek Baker"
  end

end
