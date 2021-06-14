class Offset
  extend Alphabet

  attr_reader :alphabet, :offset

  def initialize
    @alphabet = alphabet.create_alphabet
    @todays_date = Date.today.strftime("%d%m%y")
  end

  def offset(date = @cryptic[:date])
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
