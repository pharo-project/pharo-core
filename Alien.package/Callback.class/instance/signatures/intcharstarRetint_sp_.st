intcharstarRetint: callbackContext sp: spAlien
	<signature: #(int (*)(int, char *)) abi: 'IA32'>
	^callbackContext wordResult:
		((block
			value: (spAlien signedLongAt: 1) ~= 0
			value: (Alien forPointer: (spAlien unsignedLongAt: 5)) strcpyUTF8)
				ifNil: [0]
				ifNotNil:
					[:result|
					result isInteger
						ifTrue: [result]
						ifFalse: [result == true ifTrue: [1] ifFalse: [0]]])