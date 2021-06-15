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

@key = ARGV[2]
@date = ARGV[3]
@date ||= Date.today.strftime("%d%m%y")

handle = File.open(encrypted_file, "r")
incoming_text = handle.read.downcase
handle.close

@enigma = Enigma.new
@decryptor = Decryptor.new(incoming_text, @key, @date)

decrypted_text = @enigma.decrypt(incoming_text, @key, @date)

writer = File.open(decrypted_file, "w")
writer.write(decrypted_file)
writer.close

puts "Created '#{decrypted_file}' with the key #{decrypted_text[:key]} and date #{decrypted_text[:date]}"
