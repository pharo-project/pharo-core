isValidForContext
	context ifNil: [ ^false ].
	context hasUnacceptedEdits ifTrue: [ ^false ].
	^context selectedNode hasWatchpoint