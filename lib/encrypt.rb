require_relative 'alphabet'
require_relative 'decryptor'
require_relative 'encryptor'
require_relative 'enigma'
require_relative 'key'
require_relative 'offset'

unencrypted_file = ARGV[0]
unencrypted_file ||= './message.txt'
encrypted_file = ARGV[1]
encrypted_file ||= './encrypted.txt'

handle = File.open(unencrypted_file, "r")
@enigma = Enigma.new
incoming_text = handle.read.downcase

encrypted_text = @enigma.encrypt(incoming_text)
writer = File.open(encrypted_file, "w")
writer.write(encrypted_text)
writer.close
