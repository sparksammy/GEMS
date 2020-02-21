io.write("GEMS LOADED SUCCESSFULLY! FINALLY!");
io.write("We didn't plan this far ahead, so feel free to type lua code basic style while we create an actual OS..");
while true do
io.write("LUA> ");
code = io.read("*l");
loadstring(code)
wait(.1);
end
