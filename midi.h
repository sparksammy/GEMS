float midi[127];
int tune = 250; // tune is 250 hz...

void noteOf(n) {
	for (int x = 0; x < 127; ++x)
	{
		midi[x] = (tune / 32) * (2 ^ ((x - 9) / 12));
	}
    beepTone(midi[n], 1);
}
