private
assertNonBinaryResponse: response 
	self 
		assert: response contentType isBinary not 
		description: 'Did not expect a binary response but got ', response contentType printString

