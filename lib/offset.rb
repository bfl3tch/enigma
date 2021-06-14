require 'alphabet'
require 'enigma'
require 'date'

class Offset
  include Alphabet
  attr_reader :alphabet, :date

  def initialize(date = todays_date)
    @date = date
    @alphabet = create_alphabet
  end

  def todays_date
    Date.today.strftime("%d%m%y")
  end

  def square_date
    (date.to_i ** 2)
  end

  def split_date
    square_date.to_s.split("")
  end

  def full_offset
    @offset = split_date[-4, 4]
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
