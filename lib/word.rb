class Word

# require_relative "words.txt"
#
#   dictionary = File.open('words.txt')
#   dictionary_array = dictionary.readlines
#   dictionary_array.shuffle!

@@WORD_ARRAY = ["avocado", "chocolate", "dolphin", "plant", "window", "glasses", "onomatopoeia", "babylon", "laptop", "ruby", "blackberry", "street", "zebra", "crossing", "music", "shoes", "south", "bank", "zyzzyva", "quizzing", "bamboozle", "jambeaux", "flapjack", "blizzard", "frazzled", "quincunx", "quadplex", "jezebel", "maximise", "quillaja"]

  attr_reader :incorrect_guesses, :correct_guesses, :lives

  def initialize(word=@@WORD_ARRAY.sample, lives=8)
    @word = word
    @incorrect_guesses = []
    @correct_guesses = ["_"] * @word.length
    @lives = lives
  end

  def add_guess(letter)
    if @incorrect_guesses.include?(letter) || @correct_guesses.include?(letter)
      puts "Already guessed, please try again.\nIncorrect guesses: #{display_incorrect_guesses}\nCorrect guesses: #{display_correct_guesses}"

    elsif @word.include?(letter)
      add_correct_guess(letter)
      if !solved?
        puts "That's correct! Here are your correct guesses: \n#{display_correct_guesses}"
      end
    else
      add_incorrect_guess(letter)
      @lives -= 1
      puts "You have #{@lives} guesses left.\nHere are your incorrect guesses: #{display_incorrect_guesses}\nHere are your correct guesses: #{display_correct_guesses}"

    end
  end

  def display_incorrect_guesses
    @incorrect_guesses.join(" ")
  end

  def display_correct_guesses
    @correct_guesses.join(" ")
  end

  def show_answer
    @correct_guesses.join("")
  end

  def solved?
    @word == correct_guesses.join("")
  end

  private

  def add_correct_guess(letter)
    @word.split("").each_with_index do |character, position|
      if letter == character
        @correct_guesses[position] = letter
      end
    end
    "#{letter} is correct"
  end

  def add_incorrect_guess(letter)
    @incorrect_guesses.push(letter)
    "#{letter} is not correct."
  end
end
