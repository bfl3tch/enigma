require 'spec_helper'

RSpec.describe Encryptor do
  before(:each) do
    @encryptor = Encryptor.new("02715", "040895")
  end

  describe 'instantiation' do

    it 'creates an encryptor' do
      expect(@encryptor).to be_an_instance_of(Encryptor)
    end

    it 'has readable attributes' do
      expect(@encryptor.key).to eq("02715")
      expect(@encryptor.date).to eq( "040895")
      expect(@encryptor.offset.date).to eq("040895")
    end
  end

  describe 'it has a method that' do

    it 'can determine the final offset' do
    expect(@encryptor.final_offset).to eq(1025)
    end

    it 'can determine the final keys as array of integers' do
    expect(@encryptor.keys_as_ints).to eq([0, 2, 7, 1, 5])
    end

    it 'can split the full offset' do
      expect(@encryptor.offset_split).to eq([1, 0, 2, 5])
    end

    it 'can split the keys into the required pairs' do
      expect(@encryptor.split_keys_into_pairs).to eq([2, 27, 71, 15])
    end

    it 'can add the keys and the offsets' do
      expect(@encryptor.keys_plus_offsets).to eq([3, 27, 73, 20])
    end

    it 'can determine the full shift' do
      expect(@encryptor.full_shift).to eq([3, 0, 19, 20])
    end
  end
end
