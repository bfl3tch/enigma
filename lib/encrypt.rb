handle = File.open(ARGV[0], "r")
incoming_text = handle.read
encrypted_text = incoming_text.upcase
#.upcase is a test
# .encrypt (<---incorporate this method)
writer = File.open(ARGV[1], "w")
writer.write(encrypted_text)
writer.close
