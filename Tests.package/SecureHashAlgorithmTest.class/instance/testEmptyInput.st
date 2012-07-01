testing - examples
testEmptyInput
	"self run: #testEmptyInput"
	
	self assert: ((SecureHashAlgorithm new hashMessage: '') radix: 16)
			= 'DA39A3EE5E6B4B0D3255BFEF95601890AFD80709'