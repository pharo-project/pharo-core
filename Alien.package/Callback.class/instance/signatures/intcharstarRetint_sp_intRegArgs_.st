intcharstarRetint: callbackContext sp: spAlien intRegArgs: regsAlien
	<signature: #(int (*)(int, char *)) abi: 'ARM32'>
	^callbackContext wordResult:
		((block
			value: (regsAlien signedLongAt: 1) ~= 0
			value: (Alien forPointer: (regsAlien unsignedLongAt: 5)) strcpyUTF8)
				ifNil: [0]
				ifNotNil:
					[:result|
					result isInteger
						ifTrue: [result]
						ifFalse: [result == true ifTrue: [1] ifFalse: [0]]])