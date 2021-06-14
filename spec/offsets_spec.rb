require 'spec_helper'

RSpec.describe Offset do
  before(:each) do
    @offset = Offset.new
  end

  describe 'instantiation' do
    it 'creates an offset' do
    expect(@offset).to be_an_instance_of(Offset)
    end

    it 'has readable attributes' do
      expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
      allow(@offset).to receive(:todays_date).and_return("140621")

      expect(@offset.alphabet).to eq(expected)
      expect(@offset.date).to eq("140621")
    end
  end

  describe 'it has a method that' do

    it 'can square the days' do
      allow(@offset).to receive(:todays_date).and_return("140621")

      expect(@offset.square_date).to eq(19774265641)
    end

    it 'can split up the date' do
      allow(@offset).to receive(:todays_date).and_return("140621")
      expected = ["1", "9", "7", "7", "4", "2", "6", "5", "6", "4", "1"]

      expect(@offset.split_date).to eq(expected)
    end

    it 'can break off the last four' do
      allow(@offset).to receive(:todays_date).and_return("140621")

      expect(@offset.last_four_split).to eq(["5", "6", "4", "1"])
    end

    it 'can show the offset as integers' do
      allow(@offset).to receive(:todays_date).and_return("140621")

      expect(@offset.last_four_as_integers).to eq([5,6,4,1])
    end

    it 'can use the last 4 digits' do
      allow(@offset).to receive(:todays_date).and_return("140621")

      expect(@offset.full_offset).to eq(5641)
    end
  end
end
