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
    ((@offset[0].to_i) + (@a_key.to_i))
  end

  def shift_b
    ((@offset[1].to_i) + (@b_key.to_i))
  end

  def shift_c
    ((@offset[2].to_i) + (@c_key.to_i))
  end

  def shift_d
    ((@offset[3].to_i) + (@d_key.to_i))
  end

  def encrypt(message, key = nil, date = nil)
    key ||= key_gen
    date ||= todays_date
    @a_key = encrypt[:key][0,1]
    @b_key = encrypt[:key][1,2]
    @c_key = encrypt[:key][2,3]
    @d_key = encrypt[:key][3,4]
    require "pry"; binding.pry
    {message: message,
      key: key,
      date: date}
  end

end
