label
	^context selectedNode hasWatchpoint
		ifFalse: [ 'Add Watchpoint' translated ]
		ifTrue: [ 'Remove Watchpoint' translated ]
	