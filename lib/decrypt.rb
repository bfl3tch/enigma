require_relative 'alphabet'
require_relative 'decryptor'
require_relative 'encryptor'
require_relative 'enigma'
require_relative 'key'
require_relative 'offset'

encrypted_file = ARGV[0]
encrypted_file ||= './encrypted.txt'
decrypted_file = ARGV[1]
decrypted_file ||= './decrypted.txt'

handle = File.open(encrypted_file, "r")
@enigma = Enigma.new
incoming_text = handle.read.downcase

encrypted_text = @enigma.decrypt(incoming_text)
writer = File.open(decrypted_file, "w")
writer.write(decrypted_file)
writer.close
