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
      add_correct_guess
    else
      add_incorrect_guess
    end
  end

  def add_correct_guess
    letter = @user_guesses.pop

    @word.split("").each_with_index do |character, position|
      if letter == character
        @correct_guesses[position] = letter
      end
    end

  end

  def add_incorrect_guess
    @incorrect_guesses.push(@user_guesses.pop)
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
