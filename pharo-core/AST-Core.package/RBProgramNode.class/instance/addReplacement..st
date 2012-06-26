replacing
addReplacement: aStringReplacement
	parent isNil ifTrue: [^self].
	parent addReplacement: aStringReplacement