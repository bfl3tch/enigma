require './enigma'
# require './key'
# require './offset'
# require './encryptor'
# require './decryptor'
# require './command_line_interface'
#
# #FIX FOR DECRYPTION - THIS IS ENCRYPTION
# enigma = Enigma.new
# handle = File.open(ARGV[0], "r")
# incoming_text = handle.read.downcase
# encrypted_text = incoming_text.enigma.encrypt
#
# writer = File.open(ARGV[1], "w")
# writer.write(encrypted_text)
# # writer.close
#
# encrypted_file = ARGV[0]
# encrypted_file ||= './encrypted.txt'
#
# decrypyed_file = ARGV[1]
# decrypted_file ||= './decrypted.txt'
#
# # encrypted_file = ARGV[1].nil? ? './encrypted.txt' : ARGV[1]
# enigma = Enigma.new
# handle = File.open(unencrypted_file, "r")
# encrypted_text = handle.read.downcase
# decrypted_text = incoming_text.enigma.decrypt
# writer = File.open(encrypted_file, "w")
# writer.write(encrypted_text)
# writer.close
