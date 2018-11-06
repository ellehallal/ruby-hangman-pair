class Word

  attr_reader :incorrect, :letters

  def initialize(word)
    @word = word
    @user_guesses = []
    @incorrect =[]
    @letters = []
  end

  def guessed_letters


    @word.split("").each do |letter|
      if @user_guesses.include?(letter)
        @letters.push(letter)
      else
        @letters.push("_")
        @incorrect << @user_guesses.pop
      end
    end
    @letters
    # incorrect
  end

  def add_guess(letter)
    @user_guesses.push(letter)
  end
end
