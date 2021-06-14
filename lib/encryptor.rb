class Encryptor
  include Alphabet
  #make sure to test all module methods
  attr_reader :key, :date, :offset

  def initialize(key, date)
    @key = key
    @date = date
    @offset = Offset.new(date)
  end

  def final_offset
    @offset.full_offset
  end

  def keys_as_ints
    split_key = @key.split("")
    key_split_integer = split_key.map { |key| key.to_i }
  end

  def calculate_total
    
  end

  def full_shift
    final_offset
      4.times do key_split_integer.first(2)
        key_split_integer.rotate(1)
      end
    shifty = key_split_integer.each_with_index.map do |number, index|
      require "pry"; binding.pry
      number + final_offset[index]
    end
    shifty.map do |num|
      num % 27
    end
  end


end
