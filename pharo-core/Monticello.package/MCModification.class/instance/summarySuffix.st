accessing
summarySuffix
	^self fromSource = self toSource
		ifTrue: [ ' (source same but rev changed)' ]
		ifFalse: [ ' (changed)' ]