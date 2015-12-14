voidstarvoidstarRetint: callbackContext sp: spAlien intRegArgs: regsAlien
	<signature: #(int (*)(const void *, const void *)) abi: 'ARM32'>
	^callbackContext wordResult:
		(block
			value: (Alien forPointer: (regsAlien unsignedLongAt: 1))
			value: (Alien forPointer: (regsAlien unsignedLongAt: 5)))