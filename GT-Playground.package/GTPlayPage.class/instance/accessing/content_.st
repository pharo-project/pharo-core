content: aString
	content := aString.
	aString isEmpty 
		ifTrue: [ self fileReference ensureDelete ]
		ifFalse: [ self fileReference writeStreamDo: [ :s | 
				s
					truncate; 
					nextPutAll: aString ] ]