accessing
nextBytes: numBytes into: array startingAt: byteOffset

	1 to: numBytes do:[:i|
		array at: i put: (fontData byteAt: byteOffset + i - 1)].