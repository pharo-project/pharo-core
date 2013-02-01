tests
testFailCode

	self assert: 
	(	
		[ self nativeFailWithCode: 1234. false ] on: NBNativeCodeError do: [:ex |
			ex return: ex errorCode = 1234 ]
	)
	