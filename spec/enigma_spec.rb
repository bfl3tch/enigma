require 'spec_helper'

RSpec.describe Enigma do
  describe 'instantiation' do
    it 'creates a new object' do
      enigma = Enigma.new

      expect(enigma).to be_an_instance_of(Enigma)
    end
  end

  describe 'it has a method that can' do
    it 'can generate a random key' do
      enigma = Enigma.new

      expect(enigma.key_gen).to be_a(String)
      expect(enigma.key_gen.length).to eq(5)

      allow(enigma).to receive(:key_gen).and_return("05555")
      expect(enigma.key_gen).to eq("05555")
    end
    it 'can encrypt something' do
      enigma = Enigma.new

      expect(enigma.encrypt("hello", key, date)).to eq()
    end
  end
end
