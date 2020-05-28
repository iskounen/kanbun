# frozen_string_literal: true

# a Chinese character with metadata for reading it in Japanese
class Word
  attr_reader :character, :position, :reverse_marker

  def initialize(character, position, reverse_marker = nil)
    @character = character
    @position = position
    @reverse_marker = reverse_marker
  end

  def <=>(_other)
    return 1 unless @reverse_marker.nil?

    -1
  end
end
