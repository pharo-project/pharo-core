stop: anInteger
	arguments isNotEmpty
		ifTrue: [ arguments last sourcePointer: anInteger - arguments last formattedCode size + 1 ]