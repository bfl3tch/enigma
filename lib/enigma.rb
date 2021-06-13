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

  def todays_date
     Date.today.strftime("%d%m%y")
  end

  def offset
    (encrypt.date.to_i ** 2)
  end

  def shift_a
    offset[0]
  end

  def shift_b
    offset[1]
  end

  def shift_a
    offset[2]
  end

  def shift_a
    offset[3]
  end

  def encrypt(message, key = key_gen, date = todays_date)
    {message: message,
    key: key_gen,
    date: date}
  end


end
