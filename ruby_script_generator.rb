#!/usr/bin/env ruby

#Executable ruby file creation automation
#This Ruby script will create a new ruby file, add a shebang line at the top, makes it executable
#then open it in a new VS Code window
path = ARGV[0]
fail "specify filename to create" unless path
File.open(path, "w") { |f| f.puts "#!/usr/bin/env ruby" }
File.chmod(0755, path) #make the file executable
system ("code", path) #opens the file in a new VS Code window
