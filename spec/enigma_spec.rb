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

  describe 'it has a method that can' do
    # it 'can generate 4 individual shifts' do
    #   @enigma.offset("040621")
    #   @enigma.encrypt("hello world", "02715", "040621")
    #
    #   expect(@enigma.a_shift).to eq(7)
    #   expect(@enigma.b_shift).to eq(6)
    #   expect(@enigma.c_shift).to eq(21)
    #   expect(@enigma.d_shift).to eq(16)
    #
    # end

    # it 'can calculate the key' do
    #   @key.encrypt("hello world", "02715", "040895")
    #
    #   expect(@key.keys).to eq(["0", "2", "7", "1", "5"])
    # end

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
