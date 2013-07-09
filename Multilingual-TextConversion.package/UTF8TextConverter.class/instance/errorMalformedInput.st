conversion
errorMalformedInput
	^ UTF8Error new signal: 'Invalid utf8 input detected'