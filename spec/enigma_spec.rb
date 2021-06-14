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
    it 'can generate a random key' do
      expect(@enigma.key_gen).to be_a(String)
      expect(@enigma.key_gen.length).to eq(5)

      allow(@enigma).to receive(:key_gen).and_return("05555")
      expect(@enigma.key_gen).to eq("05555")
    end

    it 'can calculate the offset' do
      expect(@enigma.offset("040621")).to eq(5641)
    end

    it 'can calculate the individual offsets' do
      @enigma.offset("040621")

      expect(@enigma.offset_a).to eq(5)
      expect(@enigma.offset_b).to eq(6)
      expect(@enigma.offset_c).to eq(4)
      expect(@enigma.offset_d).to eq(1)
    end

    it 'can calculate the key' do
      @enigma.encrypt("hello world", "02715", "040895")

      expect(@enigma.keys).to eq(["0", "2", "7", "1", "5"])
    end
    it 'can calculate the individual keys' do
      @enigma.encrypt("hello world", "02715", "040895")

      expect(@enigma.a_key).to eq(2)
      expect(@enigma.b_key).to eq(27)
      expect(@enigma.c_key).to eq(71)
      expect(@enigma.d_key).to eq(15)
    end

    it 'can generate 4 individual shifts' do
      @enigma.offset("040621")
      @enigma.encrypt("hello world", "02715", "040621")

      expect(@enigma.a_shift).to eq(7)
      expect(@enigma.b_shift).to eq(6)
      expect(@enigma.c_shift).to eq(21)
      expect(@enigma.d_shift).to eq(16)

    end

    it 'can encrypt something' do
      @enigma.offset("040621")
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
