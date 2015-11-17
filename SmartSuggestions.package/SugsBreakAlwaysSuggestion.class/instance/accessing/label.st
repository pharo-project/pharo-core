label
	self hasUnacceptedEdits ifTrue: [ ^'accept to enable breakpoints' ].

	^self selectedNodeHasBreakpoint
		ifFalse: [ 'break here' translated ]
		ifTrue: [ 'remove all breakpoints' translated ]