class Word

  attr_reader :incorrect_guesses, :correct_guesses, :user_guesses

  def initialize(word)
    @word = word
    @user_guesses = [] # not needed?
    @incorrect_guesses = []
    @correct_guesses = ["_"] * @word.length
  end

  def add_guess(letter)
    @user_guesses.push(letter) #not needed?

    if @word.include?(letter)
      @word.split("").each_with_index do |character, position|
        if letter == character
          @correct_guesses[position] = letter
        end
      end
    else
      @incorrect_guesses.push(letter)
    end
  end

  def solved?
    @word == correct_guesses.join("")
  end

  def display_incorrect_guesses
    @incorrect_guesses.join(" ")
  end

  def display_correct_guesses
    @correct_guesses.join(" ")
  end

end
