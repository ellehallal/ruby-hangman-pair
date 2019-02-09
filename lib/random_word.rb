class RandomWord
  def initialize
    @words = ["avocado", "chocolate", "dolphin", "plant", "window", "glasses", "onomatopoeia", "babylon", "laptop", "ruby", "blackberry", "street", "zebra", "crossing", "music", "shoes", "south", "bank", "zyzzyva", "quizzing", "bamboozle", "jambeaux", "flapjack", "blizzard", "frazzled", "quincunx", "quadplex", "jezebel", "maximise", "quillaja"]
  end

  def pick_random_word
    @words.sample
  end
end
