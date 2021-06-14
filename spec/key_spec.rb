require 'spec_helper'

RSpec.describe Key do
  describe 'instantiation' do
    it 'creates a key' do
    key = Key.new

    expect(key).to be_an_instance_of(Key)
    end
  end

  describe 'it has a method that can' do
    it 'can generate a random key' do
      expect(@enigma.key_gen).to be_a(String)
      expect(@enigma.key_gen.length).to eq(5)

      allow(@enigma).to receive(:key_gen).and_return("05555")
      expect(@enigma.key_gen).to eq("05555")
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
  end
end
