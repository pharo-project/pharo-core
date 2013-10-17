initRandomNonInteractively

	"This logic only works when the sound package is loaded and 
	in the future we should propose a simple random generator to be 
	for the DummySoundSystem."
	
 	[self initRandom: (SoundSystem current randomBitsFromSoundInput: 512)]
 		ifError: [self initRandomFromString: 
 			Time millisecondClockValue printString, 
 			Date today printString, 
 			Smalltalk os platformName printString].