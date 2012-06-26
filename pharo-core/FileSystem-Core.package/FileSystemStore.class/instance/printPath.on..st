converting
printPath: aPath on: out
	"Use the unix convention by default, since it's the most common."
	
	aPath isAbsolute ifTrue: [ out nextPut: $/ ].
	^ aPath printOn: out delimiter: self delimiter