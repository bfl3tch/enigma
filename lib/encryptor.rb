class Encryptor
  include Alphabet
  #make sure to test all module methods
  attr_reader :key, :date

  def initialize(key, date)
    @key = key
    @date = date
    @offset = Offset.new(date)
  end

  def full_shift
    good_offset = @offset.full_offset
    good_key = @key
    require "pry"; binding.pry

  end


end
