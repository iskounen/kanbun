# frozen_string_literal: true

# a string of Chinese words to be read in Japanese
class Sentence
  attr_reader :words

  def initialize(words)
    @words = words
  end

  def read
    @words.sort.map(&:character).join
  end
end
