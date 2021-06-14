require 'spec_helper'

RSpec.describe Key do
  before(:each) do
    @key = Key.new
  end

  describe 'instantiation' do
    it 'creates a key' do
    expect(@key).to be_an_instance_of(Key)
    end

    it 'has readable attributes' do
      expect(@key.key).to be_a(String)
      expect(@key.key.length).to eq(5)
    end
  end

  describe 'it has a method that can' do
    it 'can generate a random key' do
      expect(@key.key_gen).to be_a(String)
      expect(@key.key_gen.length).to eq(5)

      allow(@key).to receive(:key_gen).and_return("05555")
      expect(@key.key_gen).to eq("05555")
    end


    # it 'can calculate the individual keys' do
    #   tester = Key.new("55555")
    #
    #   expect(tester.a_key).to eq(41)
    #   expect(tester.b_key).to eq(12)
    #   expect(tester.c_key).to eq(21)
    #   expect(tester.d_key).to eq(15)
    # end
  end
end
