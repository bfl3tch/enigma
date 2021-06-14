require './alphabet'
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

  def offset(date = @hash[:date])
    string_split = (date.to_i ** 2).to_s.split("")
    @offset = string_split[-4, 4]
    full_offset = @offset.join.to_i
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
    @message = message
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

  def a_shift
    (offset_a + a_key) % 27
  end

  def b_shift
    (offset_b + b_key) % 27
  end

  def c_shift
    (offset_c + c_key) % 27
  end

  def d_shift
    (offset_d + d_key) % 27
  end

  def encrypted_message
    ready_to_shift = @message.split("")
    #apply a shift to each 1st, 5th, 9th etc chars etc
      #how to assign individual shifts?
    #apply b shift to each 2nd, 6th, 10th etc chars etc
    #apply c shift to each 3rd, 7th, 11th etc chars etc
    #apply d shift to each 4th, 8th, 12th etc chars etc
    # alphabet = alphabet_with_indexes
    shifted = []
    ready_to_shift.map do |letter|
      # alphabet.rotate(a_shift)
      # shifted << letter
      # next shifted << letter.b_shift
      # next shifted << letter.c_shift
      # next shifted << letter.d_shift


      require "pry"; binding.pry
    end
    #bring shifted messages back together
    #join messages, return that joined message

  end

end
