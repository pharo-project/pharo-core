selectFrom: start to: stop
	self textMorph editor selectFrom: start to: stop.
	^selectionInterval := self textMorph editor selectionInterval