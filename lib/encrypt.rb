require_relative 'alphabet'
require_relative 'encryptor'
require_relative 'enigma'
require_relative 'key'
require_relative 'offset'

unencrypted_file = ARGV[0]
unencrypted_file ||= './message.txt'
encrypted_file = ARGV[1]
encrypted_file ||= './encrypted.txt'

key = ARGV[2]
key ||= Key.new.key_gen
date = ARGV[3]
date ||= Offset.new.date

handle = File.open(unencrypted_file, "r")
@enigma = Enigma.new
incoming_text = handle.read.downcase.chomp
encrypted_hash = @enigma.encrypt(incoming_text, key, date)
@encryptor = Encryptor.new(key, date)
encrypted_text = encrypted_hash[:encryption]
writer = File.open(encrypted_file, "w")
writer.write(encrypted_text)
writer.close

puts "Created '#{ARGV[0]}' with the key #{key} and date #{date}"
