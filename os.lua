function wait(s)
  local ntime = os.time() + s
  repeat until os.time() > ntime
end

-- Tagon is a programming language for GEMS
-- Since lua running lua doesn't work.
-- also BTW Tagon is a heavily modifed version of the Robolang interpreter although that would work aswell...
-- Coming soon (TM)

function check(code)
io.write("Tagon is still in development sorry...")
end

io.write("GEMS LOADED SUCCESSFULLY! FINALLY!\n");
io.write("We didn't plan this far ahead, so feel free to type Tagon code basic style while we create an actual OS..\n");
while true do
io.write("LUA> ");
code = io.read("*l");
check(code);
wait(0.1);
end
