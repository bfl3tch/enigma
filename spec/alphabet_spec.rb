require 'spec_helper'

RSpec.describe Alphabet do
  describe 'instantiation' do
    it 'creates a new object' do
      alphabet = Alphabet.new

      expect(alphabet).to be_an_instance_of(Alphabet)
    end
  end
end
