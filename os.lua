args = {}
usr = ""

--UDP packet send code begin
function sendPacket(rec, cont)
	local socket = require("socket")
	local udp = assert(socket.udp())
	local data

	udp:settimeout(1)
	assert(udp:setsockname("*",0))
	assert(udp:setpeername(rec,1234))

	for i = 0, 2, 1 do
		assert(udp:send(cont))
		data = udp:receive()
		if data then
  			break
		end
	end


	if data == nil then
		print("timeout")
	else
		print(data)
	end
end
--End of socket code

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
			io.write("Rushell version 0.6 Beta\n");
		elseif _G.cmd == "help" then
			io.write("There are seven commands:\n");
			io.write("print - Prints to the console - Usage: print hello world\n");
			io.write("version - prints the version - Usage: version\n");
			io.write("help - lists all the different commands - Usage: help\n");
			io.write("relogin - login with a different username - Usage: relogin\n");
			io.write("clear - clears the screen (not perfect) - Usage: clear\n");
			io.write("about - About rushell. - Usage: about\n");
			io.write("prompt - Waits until the user presses any key.\n");
		elseif _G.cmd == "relogin" then
			io.write("New username: ");
			usr = io.read("*l");
		elseif _G.cmd == "clear" then
			clear();
		elseif _G.cmd == "about" then
			io.write('Rushell is a small shell/scripting language for the GEMS OS, it was made by Oklomsy and sparksammy with lots of love, it is designed to be simple and delicate. the name comes from the acronym "RUby SHELL" \n');
		elseif _G.cmd == "wait" then
			wait(args[1]);
		elseif _G.cmd == "prompt" then
			io.write("Press any key to continue");
			io.read("*l");
			
end 
args = {} --clean up

end

function rshelllaunch()
while true do
io.write(usr .. "@Rushell> ")
line = io.read("*l");
cmd = string.lower(line)
rushell(cmd);
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
