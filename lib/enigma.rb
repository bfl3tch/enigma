class Enigma

  def initialize

  end

  def key_gen
    rand(99999).to_s.rjust(5, "0")
  end

  def todays_date
     Date.today.strftime("%m%d%y")
  end

  def encrypt(message, key = key_gen, date = todays_date)
    alphabet.create_alphabet
  end


end
