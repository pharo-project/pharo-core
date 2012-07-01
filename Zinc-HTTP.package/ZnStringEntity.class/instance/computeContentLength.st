private
computeContentLength
	| length |
	self string isNil ifTrue: [ ^ self ].
	self initializeEncoder.
	length := self string 
		inject: 0 
		into: [ :sum :each | sum + (encoder encodedByteCountFor: each) ].
	contentLength := length