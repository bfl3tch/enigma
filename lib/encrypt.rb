require_relative 'enigma'
require_relative 'alphabet'
require_relative 'key'
require_relative 'offset'
require_relative 'encryptor'
require_relative 'decryptor'
require_relative 'command_line_interface'

#
# enigma = Enigma.new
# handle = File.open(ARGV[0], "r")
# incoming_text = handle.read.downcase
# encrypted_text = incoming_text.enigma.encrypt
#
# writer = File.open(ARGV[1], "w")
# writer.write(encrypted_text)
# writer.close
unencrypted_file = ARGV[0]
unencrypted_file ||= './message.txt'
encrypted_file = ARGV[1]
encrypted_file ||= './encrypted.txt'

# encrypted_file = ARGV[1].nil? ? './encrypted.txt' : ARGV[1]
enigma = Enigma.new
handle = File.open(unencrypted_file, "r")
incoming_text = handle.read.downcase
encrypted_text = enigma.encrypt(incoming_text)
writer = File.open(encrypted_file, "w")
writer.write(encrypted_text)
writer.close
