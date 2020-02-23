args = {}

function wait(s)
  local ntime = os.time() + s
  repeat until os.time() > ntime
end

function clear()
 for i = 1,25 do
  print("\n\n")
 end
end

function rushell(code)
for token in string.gmatch(line, "[^%s]+") do
	table.insert(args, token)
	wait(.3)
	for i,ln in ipairs(args) do
		if ln == "print" then
			table.remove(args, 1)
			_G.cmd = ln	  
		end
		end
		end
		if _G.cmd == "print" then
			for argu,arguline in ipairs(args) do
				if argu == #args then
					io.write(arguline .. "\n")
				else
					io.write(arguline .. " ")
				end
			end
		elseif _G.cmd == "version" then
			io.write("Rushell version 1.0 Beta\n");
		elseif _G.cmd == "help" then
			io.write("There are three commands:\n");
			io.write("print - Prints to the console - Usage: print hello world\n");
			io.write("version - prints the version - Usage: version\n");
			io.write("help - lists all the different commands - Usage: help\n");

end 
args = {} --clean up

end

function rshelllaunch()
while true do
io.write(usr .. "@Rushell> ")
line = io.read("*l");
cmd = string.lower(line)
rushell(cmd);
wait(0.1);
end
end

function check(code)
if cmd == "about" then
io.write("GEMS is a recursive acronym for Gems is Essentially Maybe Spinel. It was made by Oklomsy and Sparksammy (With a LOT of love!) now If you are running a old, working version of GEMS you might encounter this, this is just a small interface. this used to be a small shell called Rushell (Formerly Tagon but we decided to name our software after gems.) (RUby SHELL) but we decided to move it somewhere else and just added two commands. one for reading more info about the OS and the other for launching the OS.\n");
end
end

io.write("GEMS LOADED SUCCESSFULLY! FINALLY!\n");
io.write("We didn't plan this far ahead, so feel free to do some stuff while we create an actual OS..\n");
io.write("Type about to read more about this OS\n");
io.write("Type launch to launch the basic login system!\n");
while true do
io.write("GEMS> ");
code = io.read("*l");
cmd = string.lower(code)
if code == "launch" then
clear();
io.write("Hello! Welcome to Rushell v1.0 BETA\n");
io.write("Please login to use the CMD prompt\n");
io.write("USERNAME: ");
usr = io.read("*l");
io.write("\n");
clear();
io.write("Welcome " .. usr .. " to Rushell.\n");
io.write("Rushell is still in early development but it works!\n");
rshelllaunch();
break
else
check(code);
end
wait(0.1);
end
