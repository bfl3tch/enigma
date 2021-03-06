require './lib/alphabet'
require_relative 'decryptor'

class Enigma
  include Alphabet
    attr_reader :encrypted_output, :message
    def initialize
      @message = message
    end

  def encrypt(message, key = Key.new.key_gen, date = Offset.new.date)
    @encryptor = Encryptor.new(key, date)
    @alphabet = create_alphabet
    @message = message
    @key = key
    @encrypted =
    { encryption: encrypted_message.chomp,
      key: key,
      date: date }
  end

  def encrypted_output
    @encrypted
  end

  def decrypt(message, key, date = Date.today.strftime("%d%m%y"))
    @message = message
    @key = key
    @date = date
    @decryptor = Decryptor.new(message, key, date)

    @decrypted =  { decryption: decrypted_message.chomp,
                    key: key,
                    date: date
                  }
    @decrypted
  end

  def decrypted_output
    @decrypted
  end

  def message_as_integers
    integers = []
    message_split = @message.split("")
    message_split.each do |letter|
      if @alphabet.include?(letter)
        integers << @alphabet.index(letter)
      else
        integers << letter
      end
    end
    integers
  end

  def message_broken_in_fours
    foured = []
    message_split = @message.split("")
      message_split.each_slice(4).each do |four|
        foured << four
      end
    foured
  end

  def message_broken_in_fours_integers
    foured_integers = []
    message_split = @message.split("")
    foursome = message_as_integers.each_slice(4).each do |four|
      foured_integers << four
    end
    foured_integers
  end

  def shifted_fours
    shifted = []
    message_broken_in_fours_integers.each do |fourty|
      fourty.each.with_index do |char, index|
        if char.is_a?(Integer)==false
          shifted << char
        else
          char += (@encryptor.full_shift[index] - 27)
          shifted << @alphabet[char]
          end
        end
      end
    shifted
  end

  def encrypted_message
    shifted_fours.join
  end

  def decrypted_message
    @decryptor.joiner
  end
end
