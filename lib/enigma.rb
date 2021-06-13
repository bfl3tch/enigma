class Enigma

  def initialize

  end

  def todays_date
     Date.today.strftime("%d%m%y")
  end

  def today_date_as_integer
    todays_date.to_i
  end

  def key_gen
    rand(99999).to_s.rjust(5, "0")
  end

  def offset(date)
    string_split = (date.to_i ** 2).to_s.split("")
    @offset = string_split[-4, 4]
    result = @offset.join.to_i
  end

  def shift_a
    @offset[0].to_i
  end

  def shift_b
    @offset[1].to_i
  end

  def shift_c
    @offset[2].to_i
  end

  def shift_d
    @offset[3].to_i
  end

  def encrypt(message, key = nil, date = nil)
    key ||= key_gen
    date ||= todays_date
    # or ^ operator, looks for t/f.  if false, set to right side, if true
    # move on
    {message: message,
    key: key_gen,
    date: date}
    offset(date)
  end

end
