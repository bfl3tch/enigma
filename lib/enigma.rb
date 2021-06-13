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

  def encrypt(message, key = nil, date = nil)
    key ||= key_gen
    date ||= todays_date
    @hash = { encryption: message,
      key: key,
      date: date }
  end

  def keys
    @hash[:key].split("")
  end

  def a_key
    "#{keys[0]}#{keys[1]}".chomp.to_i
  end

  def b_key
    "#{keys[1]}#{keys[2]}".chomp.to_i
  end

  def c_key
    "#{keys[2]}#{keys[3]}".chomp.to_i
  end

  def d_key
    "#{keys[3]}#{keys[4]}".chomp.to_i
  end

end
