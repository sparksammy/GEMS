args = {}
ver = "0.7"

function wait(s)
  local ntime = os.time() + s
 repeat until os.time() > ntime
end

function clear()
 for i = 1,26 do
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
			io.write("Rushell version " .. ver .. " Beta\n");
		elseif _G.cmd == "help" then
			io.write("There are seven commands:\n");
			io.write("print - Prints to the console - Usage: print hello world\n");
			io.write("version - prints the version - Usage: version\n");
			io.write("help - lists all the different commands - Usage: help\n");
			io.write("clear - clears the screen (not perfect) - Usage: clear\n");
			io.write("about - About rushell. - Usage: about\n");
			io.write("prompt - Waits until the user presses any key.\n");
		elseif _G.cmd == "clear" then
			clear();
		elseif _G.cmd == "about" then
			io.write('Rushell is a small shell/scripting language for the GEMS OS.\n');
		elseif _G.cmd == "wait" then
			wait(args[1]);
		elseif _G.cmd == "prompt" then
			io.write("Press any key to continue");
			io.read("*l");
			
end 
args = {}

end

io.write("GEMS LOADED SUCCESSFULLY!\n");
io.write("We didn't plan ahead but you can try the Rushell beta edition while we finish the OS.\n");
io.write("Hello! Welcome to Rushell " .. ver .. " BETA\n");
while true do
io.write("Rushell> ")
line = io.read("*l");
cmd = string.lower(line)
rushell(cmd);
end
