require 'alphabet'

class Enigma
  include Alphabet

  def encrypt(message, key = nil, date = nil)
    key ||= key.key_gen
    date ||= offset.todays_date
    @encryptor = Encryptor.new(key, date)
    @offset = Offset.new(date)
    @alphabet = create_alphabet
    @message = message
    @cryptic =
    { encryption: message,
      key: key,
      date: date }
  end

  def message_as_integers
    integers = []
    message_split = @message.split("")
    message_split.each do |letter|
      if @alphabet.include?(letter)
        integers << @alphabet.index(letter)
      else
        integers << letter
      end
    end
    integers
  end

  def message_broken_in_fours
    foured = []
    message_split = @message.split("")
    foursome = message_split.each_slice(4).each do |four|
      foured << four
    end
    foured
  end

  def message_broken_in_fours_integers
    foured_integers = []
    message_split = @message.split("")
    foursome = message_as_integers.each_slice(4).each do |four|
      foured_integers << four
    end
    foured_integers
  end

def fours_as_integers
  shifted_integers = []
  message_broken_in_fours.each do |fourty|
    fourty.each.with_index do |char, index|
      if char.is_a?(Integer)==false
        shifted_integers << char
      else
        char += @encryptor.full_shift[index]
        shifted_integers << @alphabet[char]
        end
      end
    end
    shifted_integers
  end
  #   integered_message = []
  #   message_broken_in_fours.map do |four|
  #     four.each.with_index do |letternum, index|
  #       require "pry"; binding.pry
  #       if letternum.is_a?(Integer) == false
  #         integered_ message << letternum
  #       else
  #       end
  #
  #     end
  #   end
  # end

  def encrypted_message
    shifted = []
    alphabet = create_alphabet
    alphab_with_i = alphabet_with_indexes
    ready_to_shift = @message.split("")
    foursome = ready_to_shift.each_slice(4).map do |four|
      shifted << four
    end
  end
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
    # p "hello world!"
