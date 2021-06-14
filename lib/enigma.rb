require 'alphabet'
class Enigma
  include Alphabet

  def encrypt(message, key = nil, date = nil)
    key ||= key.key_gen
    date ||= offset.todays_date
    offset = Offset.new(date)
    @message = message
    @cryptic =
    { encryption: encrypted_message,
      key: key,
      date: date }
  end

  def encrypted_message
    shifted = []
    alphabet =  create_alphabet
    alphab_with_i = alphabet_with_indexes
    ready_to_shift = @message.split("")
    test = ready_to_shift.slice(4)
require "pry"; binding.pry

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
