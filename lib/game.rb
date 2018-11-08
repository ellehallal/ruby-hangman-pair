require 'display'
require 'word'

class Game

  attr_reader :display, :word, :lives

  def initialize(display=Display.new, word=Word.new('hello'))
    @display = display
    @word = word

  end

  # def welcome
  #   @display.intro
  #   @display.game_rules
  # end


  def play
    puts @display.intro
    puts @display.game_rules
    while @word.solved? == false || !@word.lives == 0
      puts "Guess a letter"
      print "> "
      letter = gets.chomp
      @word.add_guess(letter)
    end

    if @word.solved?
      "You guessed the word #{@word.show_answer} correctly. You are a winner!"
    else
      "GAME OVER! You have unfortunately run out of lives"
    end
  end

  # def winner
  #   "You guessed the word #{@word.show_answer} correctly. You are a winner!"
  # end
  #
  # def loser
  #   "GAME OVER! You have unfortunately run out of lives"
  # end

end

# Game.new.play
