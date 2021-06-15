class Key
  attr_reader :key

  def initialize(key = nil)
    @key ||= key_gen
  end

  def key_gen
    rand(99999).to_s.rjust(5, "0")
  end
end
