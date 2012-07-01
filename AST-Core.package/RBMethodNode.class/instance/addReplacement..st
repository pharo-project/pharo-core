replacing
addReplacement: aStringReplacement 
	replacements isNil ifTrue: [^self].
	replacements add: aStringReplacement