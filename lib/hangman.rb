class Word

  attr_reader :incorrect_guesses, :correct_guesses, :user_guesses

  def initialize(word)
    @word = word
    @user_guesses = [] # not needed
    @incorrect_guesses = []
    @correct_guesses = ["_"] * @word.length
  end

  # def guessed_letters
  #   @word.split("").each do |letter|
  #     if @user_guesses.include?(letter)
  #       @correct_guesses.push(letter)
  #     else
  #       @correct_guesses.push("_")
  #        @incorrect_guesses.push(@user_guesses.pop)
  #     end
  #   end
  #   @correct_guesses
  # end

  def add_guess(letter)
    @user_guesses.push(letter)

    if @word.include?(letter)
      @word.split("").each_with_index do |character, position|
        if letter == character
          @correct_guesses[position] = letter
        end
      end
    else
      @correct_guesses.push("_")
      @incorrect_guesses.push(letter)
    end
    @correct_guesses
  end

end
