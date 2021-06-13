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
    @hash = { encryption: encrypted_message,
      key: key,
      date: date }
  end
      #
      # @a_key = ([:key]).to_i[0,1]
      # @b_key = ([:key]).to_i[1,2]
      # @c_key = ([:key]).to_i[2,3]
      # @d_key = ([:key]).to_i[3,4]

end
