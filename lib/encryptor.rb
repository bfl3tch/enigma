require_relative 'enigma'

class Encryptor
  include Alphabet
  attr_reader :key, :date, :offset

  def initialize(key = enigma.encrypt.key, date = enigma.encrypted_output[:date])
    @key = key
    @date = date
    @offset = Offset.new(date)
  end

  def final_offset
    @offset.full_offset
  end

  def offset_split
    @offset.last_four_as_integers
  end

  def keys_as_ints
    split_key = @key.split("")
    key_split_integer = split_key.map do |key|
      key.to_i
    end
  end

  def split_keys_into_pairs
    keys_as_ints.join.chars.each_cons(2).map { |pair| pair.join.to_i }
  end

  def keys_plus_offsets
    offset_split.map.with_index do |number, index|
      number + split_keys_into_pairs[index]
    end
  end

  def full_shift
    keys_plus_offsets.map do |number|
      number % 27
    end
  end
end
