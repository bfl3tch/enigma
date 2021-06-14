class Key
  attr_reader :key

  def initialize(key = nil)
    @key ||= key_gen
  end

  def key_gen
    rand(99999).to_s.rjust(5, "0")
  end

  # # def keys
  # #   @encrypted[:key].split("")
  # # end
  #
  # def a_key
  #   "#{@key[0]}#{@key[1]}".chomp.to_i
  # end
  #
  # def b_key
  #   "#{@key[1]}#{@key[2]}".chomp.to_i
  # end
  #
  # def c_key
  #   "#{@key[2]}#{@key[3]}".chomp.to_i
  # end
  #
  # def d_key
  #   "#{@key[3]}#{@key[4]}".chomp.to_i
  # end
end
