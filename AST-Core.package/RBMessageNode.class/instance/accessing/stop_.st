stop: anInteger
	arguments
		ifNotEmpty: [ arguments last stop: anInteger - arguments last formattedCode size + 1 ]
		ifEmpty: [ self selectorParts first stop: anInteger ]