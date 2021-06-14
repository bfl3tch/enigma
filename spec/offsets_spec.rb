require 'spec_helper'

RSpec.describe Offset do
  describe 'instantiation' do
    it 'creates an offset' do
    offset = Offset.new

    expect(offset).to be_an_instance_of(Offset)
    end
  end
end
