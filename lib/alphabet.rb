module Alphabet

  def self.create_alphabet
    ("a".."z").to_a << " "
  end

  def self.alphabet_with_indexes
    create_alphabet.zip((0..27).to_a)
  end

end
