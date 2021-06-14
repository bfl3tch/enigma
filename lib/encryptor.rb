class Encryptor
  include Alphabet
  #make sure to test all module methods
  attr_reader :key, :date, :offset

  def initialize(key, date)
    @key = key
    @date = date
    @offset = Offset.new(date)
  end

  def full_shift
    final_offset = @offset.full_offset
    split_key = @key.split("")
    shifty = split_key.map_with_index do |number, index|
      number + final_offset[index]
    end
    shifty.map do |num|
      num % 27
    end
  end


end
