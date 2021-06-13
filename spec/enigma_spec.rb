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
        @enigma.encrypt("hello")
        expect(@enigma.offset).to eq(234)
      end

    it 'can encrypt something' do
      expect(@enigma.encrypt("hello")).to be_a(Hash)
      expect(@enigma.encrypt("hello").values).to include("hello")
    end


  end
end
