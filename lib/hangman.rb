class Word

  attr_reader :incorrect_guesses, :correct_guesses, :user_guesses

  def initialize(word)
    @word = word
    @user_guesses = [] # not needed?
    @incorrect_guesses = []
    @correct_guesses = ["_"] * @word.length
  end

  def add_guess(letter)
    if @user_guesses.include?(letter)
      already_guessed

    elsif @word.include?(letter)
      @user_guesses.push(letter)
      add_correct_guess
      
    else
      @user_guesses.push(letter)
      add_incorrect_guess
    end
  end

  def already_guessed
    "Already guessed, please try again."
  end

  def add_correct_guess
    letter = @user_guesses.pop

    @word.split("").each_with_index do |character, position|
      if letter == character
        @correct_guesses[position] = letter
      end
    end
    "#{letter} is correct"
  end

  def add_incorrect_guess
    letter = @user_guesses.pop
    @incorrect_guesses.push(letter)
    "#{letter} is not correct."
  end

  def display_incorrect_guesses
    @incorrect_guesses.join(" ")
  end

  def display_correct_guesses
    @correct_guesses.join(" ")
  end

  def solved?
    @word == correct_guesses.join("")
  end

end
