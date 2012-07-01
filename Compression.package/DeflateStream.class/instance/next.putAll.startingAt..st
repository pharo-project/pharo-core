accessing
next: bytes putAll: aCollection startingAt: startPos
	(startPos = 1 and:[bytes = aCollection size]) 
		ifTrue:[^self nextPutAll: aCollection].
	^self nextPutAll: (aCollection copyFrom: startPos to: startPos + bytes - 1)