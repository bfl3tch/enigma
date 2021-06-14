require 'spec_helper'

RSpec.describe Decryptor do
  before(:each) do
    @encryptor = Encryptor.new("02715", "040895")
    @decryptor = Decryptor.new(message, key, date)
  end

  describe 'instantiation' do
    it 'creates a new object' do
      expect(@decryptor).to be_an_instance_of(Decryptor)
    end

    it 'has readable attributes' do
      expect(@decryptor.key).to eq("02715")
      expect(@decryptor.date).to eq( "040895")
      # expect(@decryptor.offset.date).to eq("040895")
    end
  end

  describe 'it has a method that' do
    it 'can determine the final offset' do
    expect(@decryptor.final_offset).to eq(1025)
    end

    it 'can determine the final keys as array of integers' do
    expect(@decryptor.keys_as_ints).to eq([0, 2, 7, 1, 5])
    end

    it 'can split the full offset' do
      expect(@decryptor.offset_split).to eq([1, 0, 2, 5])

    end

    it 'can split the keys into the required pairs' do
      expect(@decryptor.split_keys_into_pairs).to eq([2, 27, 71, 15])
    end

    it 'can add the keys and the offsets' do
      expect(@decryptor.keys_plus_offsets).to eq([3, 27, 73, 20])
    end

    it 'can determine the full shift' do
      expect(@decryptor.full_shift).to eq([3, 0, 19, 20])
    end
  end
end
