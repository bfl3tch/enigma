class CommandLineInterface

handle = File.open(ARGV[0], "r")
incoming_text = handle.read
encrypted_text = incoming_text.encrypt?????
writer = file.open[ARGV[1], "w"]
writer.write(encrypted_text)
wrter.close


end
