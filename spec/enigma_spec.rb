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
