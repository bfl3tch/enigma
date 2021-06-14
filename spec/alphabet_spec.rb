require 'spec_helper'

RSpec.describe Alphabet do
  before(:each) do
    @alphabet = Alphabet.new
  end
  # describe 'instantiation' do
  #   it 'creates a new object' do
  #     expect(@alphabet).to be_an_instance_of(Alphabet)
  #   end
  # end

  describe 'it has a method that' do
    it 'can make a regular alphabet with a space character' do
      expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]

      expect(@alphabet.create_alphabet).to eq(expected)
    end

    it 'can include the index numbers of each of those characters' do
      expected = [["a", 0], ["b", 1], ["c", 2], ["d", 3], ["e", 4], ["f", 5], ["g", 6], ["h", 7], ["i", 8], ["j", 9], ["k", 10], ["l", 11], ["m", 12], ["n", 13], ["o", 14], ["p", 15], ["q", 16], ["r", 17], ["s", 18], ["t", 19], ["u", 20], ["v", 21], ["w", 22], ["x", 23], ["y", 24], ["z", 25], [" ", 26]]
      expect(@alphabet.alphabet_with_indexes).to eq(expected)
    end
  end
end
