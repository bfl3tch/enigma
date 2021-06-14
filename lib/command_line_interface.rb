# unencrypted_file = ARGV[0]
# unencrypted_file ||= './message.txt'
#
# encrypted_file = ARGV[1]
# encrypted_file ||= './encrypted.txt'
#
# # encrypted_file = ARGV[1].nil? ? './encrypted.txt' : ARGV[1]
# enigma = Enigma.new
# handle = File.open(unencrypted_file, "r")
# incoming_text = handle.read
# encrypted_text = incoming_text.upcase
# writer = File.open(encrypted_file, "w")
# writer.write(encrypted_text)
# writer.close
