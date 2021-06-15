require_relative 'offset'
require_relative 'enigma'

class Decryptor
  include Alphabet
  attr_reader :key, :date, :offset, :message
  #make sure to test all module methods
  #maybe delete .txt files at end of project
  def initialize(message = enigma.encrypted_output[:encryption], key = enigma.encrypted_output[:key], date = enigma.encrypted_output[:date])
    @message = message
    @key = key
    @date = date
    @offset = Offset.new(date)
    @alphabet = create_alphabet
  end

  def calcuate_split_offset
    @offset.last_four_as_integers
  end

  def split_key
    @key.split("")
  end

  def split_as_integers
    split_key.map do |string|
      string.to_i
    end
  end

  def split_keys_into_pairs
    split_as_integers.join.chars.each_cons(2).map do |pair|
      pair.join.to_i
    end
  end

  def keys_plus_offsets
    calcuate_split_offset.map.with_index do |number, index|
      number + split_keys_into_pairs[index]
    end
  end

  def calculate_shift
    keys_plus_offsets.map do |number|
      number % 27
    end
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
          char -= (calculate_shift[index])
          shifted << @alphabet[char]
          end
        end
      end
    shifted
  end

  def joiner
    shifted_fours.join
  end
end
