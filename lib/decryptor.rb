require_relative 'offset'
require_relative 'enigma'

class Decryptor
  include Alphabet
  attr_reader :key, :date, :offset, :message
  #make sure to test all module methods
  #maybe delete .txt files at end of project
  def initialize(message = enigma.encrypted_output[:encryption], key = enigma.encrypted_output[:key], date = nigma.encrypted_output[:date])
    @message = message
    @key = key
    @date = date
    @offset = Offset.new(date)
  end

  def calcuate_offset(date)
    date = @date
    @offset.full_offset
  end



  # def final_offset
  #   @offset.full_offset
  # end
  #
  # def offset_split
  #   @offset.last_four_as_integers
  # end
  #
  # def keys_as_ints
  #   split_key = @key.split("")
  #   key_split_integer = split_key.map { |key| key.to_i }
  # end
  #
  # def split_keys_into_pairs
  #   keys_as_ints.join.chars.each_cons(2).map { |pair| pair.join.to_i }
  # end
  #
  # def keys_plus_offsets
  #   offset_split.map.with_index do |number, index|
  #     number + split_keys_into_pairs[index]
  #   end
  # end
  #
  # def full_shift
  #   keys_plus_offsets.map do |number|
  #     number % 27
  #   end
  # end
end
