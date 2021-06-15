require 'spec_helper'

RSpec.describe Decryptor do
  before(:each) do
    @decryptor = Decryptor.new("keder ohulw!", "02715", "040895")
  end

  describe 'instantiation' do
    it 'creates a new object' do
      expect(@decryptor).to be_an_instance_of(Decryptor)
    end

    it 'has readable attributes' do
      expect(@decryptor.key).to eq("02715")
      expect(@decryptor.date).to eq( "040895")
      expect(@decryptor.offset.date).to eq("040895")
    end
  end

  describe 'it has a method that' do
    it 'can calculate the offset' do
      expect(@decryptor.calcuate_split_offset).to eq([1, 0, 2, 5])
    end

    it 'can split the key' do
      expect(@decryptor.split_key).to eq(["0", "2", "7", "1", "5"])
    end

    it 'can turn the splits into integers' do
      expect(@decryptor.split_as_integers).to eq([0,2,7,1,5])
    end

    it 'can pair up those split integers for use' do
      expect(@decryptor.split_keys_into_pairs).to eq([2, 27, 71, 15])
    end

    it 'can add the keys and the offsets' do
      expect(@decryptor.keys_plus_offsets).to eq([3, 27, 73, 20])
    end

    it 'can calculate the shift' do
      expect(@decryptor.calculate_shift).to eq([3, 0, 19, 20])
    end

    it 'can split the encrypted message to integers' do
      expected = [10, 4, 3, 4, 17, 26, 14, 7, 20, 11, 22, "!"]
      expect(@decryptor.message_as_integers).to eq(expected)
    end

    it 'can split the encrypyted integerial message to fours' do
      expected = [[10, 4, 3, 4], [17, 26, 14, 7], [20, 11, 22, "!"]]
      expect(@decryptor.message_broken_in_fours_integers).to eq(expected)
    end

    it 'can split that message into groups of four' do
      expected = [["k", "e", "d", "e"], ["r", " ", "o", "h"], ["u", "l", "w", "!"]]
      expect(@decryptor.message_broken_in_fours).to eq(expected)
    end

    it 'can apply the shift to the encrypted inger message as fours' do
      expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"]
      expect(@decryptor.shifted_fours).to eq(expected)
    end

    it 'can join that message into the expected output' do
      expected = "hello world!"
      expect(@decryptor.joiner).to eq(expected)
    end
  end
end
