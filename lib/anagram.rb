require 'pry'
class Anagram
  
  attr_accessor :word

  def initialize(word)
    @word = word.split("").sort
  end

  # find anagram matches given an array of words
  def match(matched)
    matched.select do |matched|
      @word.split("").sort == possible_anagram.split("").sort
    end
  end
end