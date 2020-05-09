void rloadstring(cmd, var1, var2) {
	if (cmd == "welcomescreen") {
		setTermColor(0xA0);
		print("Welcome!\n");
		setTermColor(0x0F);
		print("We had to start over on ");
		setTermColor(0x4F);
		print("Rushell");
		setTermColor(0x0F);
		print(" development \n");
		print("due to potential technical difficulties.\n");
		print("It might take awhile for us \n to get back up to speed, "); 
		print("but here are a few things you can expect:\n");
	} else if (cmd == "helpscreen") {
		setTermColor(0x2A);
		print("??Help command early access!??\n");
		print("dog - like cat\n");
		print("micro - like nano but simpler\n");
		print("calc - a calculator\n");
		print("samlang - a small, simple language\n");
		print("setmhztime - set time in mhz seconds\n");
		print("mhztime - get time in mhz seconds\n");
		setTermColor(0x4F);
		print("More? Less? Who knows?");
		print(" It just depends on how we feel...\n");
		print("--The GEMS Team");
		setTermColor(0x0F);
	} else if (cmd == "debugRainbow") {
		setTermColor(0x2F);
		print("\n----------------------------------------------\n");
		print("`Why are there so many songs about rainbows\n");
		print("and what's on the other side`\n");
		setTermColor(0x08);
		print("~");
		setTermColor(0x19);
		print("~");
		setTermColor(0x2A);
		print("K");
		setTermColor(0x3B);
		print("E");
		setTermColor(0x4C);
		print("R");
		setTermColor(0x5D);
		print("M");
		setTermColor(0x6E);
		print("I");
		setTermColor(0x7F);
		print("T");
		setTermColor(0x0F);
	} else if (cmd == "getkey") {
		basickeys();
	} else if (cmd == "cli") {
		
	}
}
