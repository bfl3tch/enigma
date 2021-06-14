require 'spec_helper'

RSpec.describe Enigma do
  before(:each) do
    @enigma = Enigma.new
  end

  describe 'instantiation' do
    it 'creates a new object' do
      expect(@enigma).to be_an_instance_of(Enigma)
    end
  end
  #
  describe 'it has a method that can' do
    it 'can convert the message to fours' do
      @enigma.encrypt("hello world", "02715", "040895")
      expected = [7, 4, 11, 11, 14, 26, 22, 14, 17, 11, 3]
      expect(@enigma.message_as_integers).to eq(expected)
    end

    it 'can convert the message to groups of four' do
      @enigma.encrypt("hello world", "02715", "040895")
      expected =  [["h", "e", "l", "l"], ["o", " ", "w", "o"], ["r", "l", "d"]]
      expect(@enigma.message_broken_in_fours).to eq(expected)

    end

    it 'can convert the message to integer equivalents' do
      @enigma.encrypt("hello world", "02715", "040895")
      expected = [[7, 4, 11, 11], [14, 26, 22, 14], [17, 11, 3]]
      expect(@enigma.message_broken_in_fours_integers).to eq(expected)

    end
    # it 'can break the incoming integer-converted message into fours' do
    #   @enigma.encrypt("hello world", "02715", "040895")
    #   expected = [[7, 4, 11, 11], [14, 26, 22, 14], [17, 11, 3]]
    #   expect(@enigma.message_broken_in_fours).to eq(expected)
    #
    # end

    it 'can translate the message into numbers' do
      @enigma.encrypt("hello world", "02715", "040895")
      expected = [[8, 4, 12, 12], ["o", " ", "w", "o"], ["r", "l", "d"]]
      expect(@enigma.fours_as_integers).to eq(expected)

    end
    it 'can encrypt something' do
      test = @enigma.encrypt("hello world", "02715", "040895")
      expected = {
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
      }

      expect(test[:encryption]).to eq(expected[:encryption])
      expect(test[:key]).to eq(expected[:key])
      expect(test[:date]).to eq(expected[:date])
      expect(@a_key).to eq(21)
      expect(@b_key).to eq(13)
      expect(@c_key).to eq(34)
      expect(@d_key).to eq(45)
    end
  end
end
