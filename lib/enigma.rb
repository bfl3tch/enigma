require 'alphabet'
class Enigma
  include Alphabet

  def initialize
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

  def full_shift

  end

  def encrypt(message, key = nil, date = nil)
    key ||= key.key_gen
    date ||= todays_date
    offset = Offset.new(date)
    @message = message
    @cryptic =
    { encryption: encrypted_message,
      key: key,
      date: date }
  end




  def encrypted_message
    alphabet = alphabet_with_indexes
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

    end
    #bring shifted messages back together
    #join messages, return that joined message
    p "hello world!"
  end

end
