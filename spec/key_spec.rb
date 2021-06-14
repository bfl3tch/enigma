require 'spec_helper'

RSpec.describe Key do
  describe 'instantiation' do
    it 'creates a key' do
    key = Key.new

    expect(key).to be_an_instance_of(Key)
    end
  end
end
