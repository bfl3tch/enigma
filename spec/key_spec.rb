require 'spec_helper'

RSpec.describe Key do
  before(:each) do
    @key = Key.new
  end
  
  describe 'instantiation' do
    it 'creates a key' do
    expect(key).to be_an_instance_of(Key)
    end
  end

  describe 'it has a method that can' do
    it 'can generate a random key' do
      expect(@key.key_gen).to be_a(String)
      expect(@key.key_gen.length).to eq(5)

      allow(@key).to receive(:key_gen).and_return("05555")
      expect(@key.key_gen).to eq("05555")
    end

    it 'can calculate the key' do
      @key.encrypt("hello world", "02715", "040895")

      expect(@key.keys).to eq(["0", "2", "7", "1", "5"])
    end

    it 'can calculate the individual keys' do
      @key.encrypt("hello world", "02715", "040895")

      expect(@key.a_key).to eq(2)
      expect(@key.b_key).to eq(27)
      expect(@key.c_key).to eq(71)
      expect(@key.d_key).to eq(15)
    end
  end
end
