label
	self hasUnacceptedEdits ifTrue: [ ^'Accept to enable breakpoints' ].

	^self selectedNodeHasBreakpoint
		ifFalse: [ 'Break here' translated ]
		ifTrue: [ 'Remove all breakpoints' translated ]