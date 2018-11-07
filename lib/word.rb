class Word

  attr_reader :incorrect_guesses, :correct_guesses

  def initialize(word)
    @word = word
    @incorrect_guesses = []
    @correct_guesses = ["_"] * @word.length
  end

  def add_guess(letter)
    if @incorrect_guesses.include?(letter) || @correct_guesses.include?(letter)
      "Already guessed, please try again."

    elsif @word.include?(letter)
      add_correct_guess(letter)

    else
      add_incorrect_guess(letter)
    end
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
