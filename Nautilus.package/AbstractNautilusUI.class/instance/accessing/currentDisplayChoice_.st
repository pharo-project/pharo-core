currentDisplayChoice: aSymbol

	(currentDisplayChoice := aSymbol) == #ByteCode
		ifTrue: [ self sourceTextArea enabled: false ]
		ifFalse: [ self sourceTextArea enabled: true ].
	self changed: #showSource.
	self changed: #showByteCode.
	self changed: #sourceCodeFrom:.

	self announce: (NautilusTextDisplayerChanged displayerSymbol: aSymbol)