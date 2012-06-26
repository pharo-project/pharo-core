private
assertBinaryResponse: response 
	self
		assert: response contentType isBinary
		description: 'Did expect a binary response instead of ', response contentType printString
