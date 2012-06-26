as yet unclassified
typeOfSubclass: aSymbol
	#(
		(subclass: normal)
		(variableSubclass: variable)
		(variableByteSubclass: bytes)
		(variableWordSubclass: words)
		(weakSubclass: weak)
		) do: [:ea | ea first = aSymbol ifTrue: [^ ea second]].
	self error: 'Unrecognized class definition'