require 'pry'
class Anagram
  
  attr_accessor :word

  def initialize(word)
    (@word = word).split("").sort
  end

  # find anagram matches given an array of words
  def match(possible_anagrams)
    possible_anagrams.select do |possible_anagram|
      (@word = word) == possible_anagram.split("").sort
    end
  end
end