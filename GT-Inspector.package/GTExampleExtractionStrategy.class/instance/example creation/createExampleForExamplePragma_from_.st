createExampleForExamplePragma: aPragma from: anExampleProvider
	| example |
	
	example := self createExampleForMethod: aPragma method asRingDefinition from: anExampleProvider.
	aPragma arguments size = 1 ifTrue: [ 
		example title: (aPragma argumentAt: 1) ].
	^ example