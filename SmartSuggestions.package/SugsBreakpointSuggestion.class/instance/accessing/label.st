label
	self hasUnacceptedEdits ifTrue: [ ^'accept to enable breakpoints' ].

	self selectedNodeHasMetalink
		ifFalse: [ ^ 'break here' translated ]
		ifTrue: [ ^ 'remove all breakpoints' translated ]