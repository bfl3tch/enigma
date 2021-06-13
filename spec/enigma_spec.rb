require 'spec_helper'

RSpec.describe Enigma do
  describe 'instantiation' do
    it 'creates a new object' do
      enigma = Enigma.new

      expect(enigma).to be_an_instance_of(Enigma)
    end
  end
end
