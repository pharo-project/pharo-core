on: aWatchpoint
	| inst |
	inst := self basicNew.
	inst watchpoint: aWatchpoint.
	inst initialize.
	^inst