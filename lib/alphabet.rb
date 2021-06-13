class Alphabet

  def create_alphabet
    ("a".."z").to_a << " "
  end

  def alphabet_with_indexes
    create_alphabet.zip((0..27).to_a)
  end

end
