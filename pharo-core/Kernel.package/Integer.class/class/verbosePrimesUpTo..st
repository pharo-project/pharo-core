prime numbers
verbosePrimesUpTo: max
	"Integer verbosePrimesUpTo: SmallInteger maxVal" "<- heh, heh"
	"Compute primes up to max, but be verbose about it"
	^Array streamContents:[:s| self verbosePrimesUpTo: max do:[:prime| s nextPut: prime]].