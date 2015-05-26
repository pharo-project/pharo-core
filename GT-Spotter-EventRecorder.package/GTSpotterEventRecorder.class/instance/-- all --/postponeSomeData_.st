postponeSomeData: aCollection 
	| lastExitIndex |
	lastExitIndex := aCollection findLast: [ :each | each isCloseSpotter ].
	lastExitIndex = aCollection size ifTrue: [ ^ aCollection ].
	postponedData := aCollection copyFrom: lastExitIndex + 1 to: aCollection size.
	^ aCollection first: lastExitIndex.