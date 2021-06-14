class Keys
  attr_reader :key
  
  def initialize(key = key_gen)
    @key = key
  end

  def key_gen
    rand(99999).to_s.rjust(5, "0")
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
end
