require 'alphabet'
# require 'encryptor'
# # require 'key'
# # require 'offset'
class Enigma
  include Alphabet

  def encrypt(message, key = nil, date = nil)
    key ||= key.key_gen
    date ||= offset.todays_date
    encryptor = Encryptor.new(key, date)
    offset = Offset.new(date)
    @message = message
    @cryptic =
    { encryption: message,
      key: key,
      date: date }
  end

  def message_broken_in_fours
    # require "pry"; binding.pry

    shifted = []
    alphabet = create_alphabet
    alphab_with_i = alphabet_with_indexes

    ready_to_shift = @message.split("")
    foursome = ready_to_shift.each_slice(4).each do |four|
      shifted << four
    end
    shifted
  end

  def encrypted_message
    shifted = []
    alphabet = create_alphabet
    alphab_with_i = alphabet_with_indexes
    ready_to_shift = @message.split("")
    foursome = ready_to_shift.each_slice(4).map do |four|
      shifted << four
    end
    # shifted.map do |four|
    #   # require "pry"; binding.pry
    #
    #   four.encryptor.full_shift
# end
    # ready_to_shift.map do |letter|
    # end




      # alphabet.rotate(a_shift)
      # shifted << letter
      # next shifted << letter.b_shift
      # next shifted << letter.c_shift
      # next shifted << letter.d_shift

    # end
    #bring shifted messages back together
    #join messages, return that joined message
    p "hello world!"
  end
end
