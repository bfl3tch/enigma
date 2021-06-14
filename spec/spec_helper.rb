require 'rspec'
require 'simplecov'
SimpleCov.start
SimpleCov.add_filter ['spec']
require './lib/enigma'
require './lib/key'
require './lib/offset'
require './lib/encryptor'
require './lib/decryptor'
require './lib/alphabet'
