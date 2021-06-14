require 'spec_helper'

RSpec.describe Encryptor do
  before(:each) do
    @encryptor = Encryptor.new("02715", "040895")
  end

  describe 'intantiation' do
    it 'creates a new object' do
      expect(@encryptor).to be_an_instance_of(Encryptor)
    end

    it 'has readable attributes' do
      expect(@encryptor.key).to eq("02715")
      expect(@encryptor.date).to eq( "040895")
      expect(@encryptor.offset).to eq("Encryptor")

    end
  end

  describe 'it has a method that' do
    it 'can determine the full shift' do
      expect(@encryptor.full_shift).to eq(3512)


    end
  end
end
