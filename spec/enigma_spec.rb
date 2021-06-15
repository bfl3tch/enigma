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

  describe 'it has a method that' do
    it 'can convert the message letters to integer values' do
      @enigma.encrypt("hello world!", "02715", "040895")
      expected = [7, 4, 11, 11, 14, 26, 22, 14, 17, 11, 3, "!"]

      expect(@enigma.message_as_integers).to eq(expected)
    end

    it 'can convert the message to groups of four' do
      @enigma.encrypt("hello world", "02715", "040895")
      expected =  [["h", "e", "l", "l"], ["o", " ", "w", "o"], ["r", "l", "d"]]

      expect(@enigma.message_broken_in_fours).to eq(expected)
    end

    it 'can convert the message to integer equivalents' do
      @enigma.encrypt("hello world", "02715", "040895")
      expected = [[7, 4, 11, 11], [14, 26, 22, 14], [17, 11, 3]]

      expect(@enigma.message_broken_in_fours_integers).to eq(expected)
    end

    it 'can translate the message into encrypted text' do
      @enigma.encrypt("hello world", "02715", "040895")
      expected = ["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w"]

      expect(@enigma.shifted_fours).to eq(expected)
    end

    it 'can encrypt a message and display the encrypted output hash' do
      @enigma.encrypt("hello world!", "02715", "040895")
      expected = {:date=>"040895", :encryption=>"keder ohulw!", :key=>"02715"}

      expect(@enigma.encrypted_output).to eq(expected)
    end

    it 'can encrypt something' do
      test = @enigma.encrypt("hello world!", "02715", "040895")
      expected = {  encryption: "keder ohulw!",
                    key: "02715",
                    date: "040895"  }

      expect(test[:encryption]).to eq(expected[:encryption])
      expect(test[:key]).to eq(expected[:key])
      expect(test[:date]).to eq(expected[:date])
    end

    it 'can display the decrypted message output' do
      @enigma.decrypt("keder ohulw!", "02715", "040895")

      expect(@enigma.decrypted_output[:decryption]).to eq("hello world!")
    end

    it 'can decrypt something' do
      @enigma.decrypt("keder ohulw!", "02715", "040895")

      expect(@enigma.decrypted_message).to eq("hello world!")
    end

    it 'can decrypt a message and display the decrypted output hash' do
      test = @enigma.decrypt("keder ohulw!", "02715", "040895")
      expected = {  decryption: "hello world!",
                    key: "02715",
                    date: "040895"  }

      expect(test[:decryption]).to eq(expected[:decryption])
      expect(test[:key]).to eq(expected[:key])
      expect(test[:date]).to eq(expected[:date])
    end
  end
end
