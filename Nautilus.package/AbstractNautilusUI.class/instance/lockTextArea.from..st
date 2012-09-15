source code area
lockTextArea: aBoolean from: source

	aBoolean
		ifTrue: [ self lockTextArea ]
		ifFalse: [ self unlockTextArea: source ].