require './lib/alphabet'
require_relative 'decryptor'

class Enigma
  include Alphabet

  def encrypt(message, key = nil, date = nil)
    key ||= Key.new.key
    date ||= Offset.new.date
    @encryptor = Encryptor.new(key, date)
    @alphabet = create_alphabet
    @message = message
    @encrypted =
    { encryption: encrypted_message.chomp,
      key: key,
      date: date }
  end

  def encrypted_output
    @encrypted
  end

  def decrypt(message = enigma.encrypted_output[:encryption], key = enigma.encrypted_output[:key], date = enigma.encrypted_output[:date])
    @message = message
    @key = key
    @date = date
    @decryptor = Decryptor.new(message, key, date)
    @decrypted =
    { decryption: decrypted_message,
      key: key,
      date: date }
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
    foursome = message_split.each_slice(4).each do |four|
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
