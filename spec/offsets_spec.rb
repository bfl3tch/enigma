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

      expect(@offset.alphabet).to eq(expected)

      allow(@offset).to receive(:todays_date).and_return("140621")
      expect(@offset.todays_date).to eq("140621")
    end
  end
  describe 'it has a method that' do
    it 'can calculate the offset' do
      require "pry"; binding.pry
      expect(@enigma.offset("040621")).to eq(5641)
    end

    it 'can calculate the individual offsets' do
      @enigma.offset("040621")

      expect(@enigma.offset_a).to eq(5)
      expect(@enigma.offset_b).to eq(6)
      expect(@enigma.offset_c).to eq(4)
      expect(@enigma.offset_d).to eq(1)
    end
  end
end
