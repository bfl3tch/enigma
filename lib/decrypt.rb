require './enigma'
require './key'
require './offset'
require './encryptor'
require './decryptor'
require './command_line_interface'

#FIX FOR DECRYPTION - THIS IS ENCRYPTION
enigma = Enigma.new
handle = File.open(ARGV[0], "r")
incoming_text = handle.read.downcase
encrypted_text = incoming_text.enigma.encrypt

writer = File.open(ARGV[1], "w")
writer.write(encrypted_text)
writer.close
