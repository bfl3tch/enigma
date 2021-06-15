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

decrypted_hash = @enigma.decrypted_output
# trial_hash = {
#     decryption: decrypted_text,
#     key: key,
#     date: date
#   }
# @decryptor = Decryptor.new(self.joiner, key, date)
# decrypted_text = @enigma.decrypt(decryptor.joiner,key,date)
@decrypted_text = @enigma.decrypt(encrypted, key, date)[:decryption]
#below passes with current random key
# decrypted_text = @enigma.decrypt("risnydcqapk!", key, date)
@display_hash = {
  decryption: @decrypted_text,
    key: key,
    date: date
}
writer = File.open(decrypted_file, "w")
writer.write(@display_hash)
writer.close

puts "Created '#{decrypted_file}' with the key #{key} and date #{date}"
