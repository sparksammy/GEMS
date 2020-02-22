function wait(s)
  local ntime = os.time() + s
  repeat until os.time() > ntime
end

-- Tagon is a programming language for GEMS
-- Since lua running lua doesn't work.
-- Coming soon (TM)

function check(code)
cmd = string.lower(code)
if cmd == "about" then
io.write("Tagon is a small programming language for GEMS, it is still in early development. it might be discontinued if we do finish making the OS or it might just become a scripting language for GEMS, it only has one command and that's about which prints this message, We might add more commands but Tagon is really not that important but I just MIGHT develop it one day.\n");
end
end

io.write("GEMS LOADED SUCCESSFULLY! FINALLY!\n");
io.write("We didn't plan this far ahead, so feel free to type Tagon code basic style while we create an actual OS..\n");
io.write("Type about to see more information about Tagon\n");
while true do
io.write("TAGON> ");
code = io.read("*l");
check(code);
wait(0.1);
end
