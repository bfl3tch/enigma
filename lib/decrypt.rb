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

key = ARGV[2]
date = ARGV[3]
date ||= Date.today.strftime("%d%m%y")
@enigma = Enigma.new

handle = File.open(encrypted_file, "r")
encrypted = handle.read.downcase.chomp
handle.close
hash = Hash.new
hash[encrypted]
# decrypted_hash = @enigma.decrypted_output
decrypted_output =
decrypted_text = @enigma.decrypt(ENCRYPTED_TEXT_FROM_FILE, key, date)

writer = File.open(decrypted_file, "w")
writer.write(decrypted_text)
writer.close

puts "Created '#{decrypted_file}' with the key #{key} and date #{date}"
