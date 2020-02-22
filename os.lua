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
io.write("Sorry but rushell is still in development.\n");
end

function rshelllaunch()
while true do
io.write("RUSHELL> ");
code = io.read("*l");
cmd = string.lower(code)
rushell(code);
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
io.write("Hello! Welcome to PearlCMD v1.0 BETA\n");
io.write("Please login to use the CMD prompt\n");
io.write("USERNAME: ");
usr = io.read("*l");
io.write("\n");
clear();
io.write("Welcome " .. usr .. " to the CMD prompt.\n");
io.write("The OS has not been finished yet, it might take some time to finish developing PearlCMD.\n");
rshelllaunch();
break
else
check(code);
end
wait(0.1);
end
