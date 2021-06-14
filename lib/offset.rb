require_relative 'alphabet'

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

  def last_four_split
    split_date[-4, 4]
  end
 # add this test
  def last_four_as_integers
    last_four_split.map do |string|
      string.to_i
    end
  end

  def full_offset
    last_four_split.join.to_i
  end

  # def offset_assignment
  #   full_offset.each do |offset|
  #     require "pry"; binding.pry
  #   end
  #
  # end

  # def offset_a
  #   @offset[0].to_i
  # end
  #
  # def offset_b
  #   @offset[1].to_i
  # end
  #
  # def offset_c
  #   @offset[2].to_i
  # end
  #
  # def offset_d
  #   @offset[3].to_i
  # end
end
