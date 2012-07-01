accessing
newSource
	replacements isNil ifTrue: [^self formattedCode].
	^[self reformatSource] on: Error do: [:ex | ex return: self formattedCode]