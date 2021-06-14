require 'alphabet'
require 'enigma'

class Offset
  include Alphabet
  include Date

  attr_reader :alphabet

  def initialize
    @alphabet = create_alphabet
    @todays_date = todays_date
  end

  def offset(date)
    string_split = (date.to_i ** 2).to_s.split("")
    @offset = string_split[-4, 4]
    full_offset = @offset.join.to_i
  end

  # def todays_date
  #    Date.today.strftime("%d%m%y")
  # end

  def today_date_as_integer
    todays_date.to_i
  end

  def offset_a
    @offset[0].to_i
  end

  def offset_b
    @offset[1].to_i
  end

  def offset_c
    @offset[2].to_i
  end

  def offset_d
    @offset[3].to_i
  end

end
