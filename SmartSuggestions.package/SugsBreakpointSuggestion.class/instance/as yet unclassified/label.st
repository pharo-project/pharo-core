label
	self selectedNodeHasMetalink
		ifFalse: [ ^ 'break here' translated ]
		ifTrue: [ ^ 'remove all breakpoints' translated ]