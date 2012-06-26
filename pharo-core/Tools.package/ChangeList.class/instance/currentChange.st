accessing
currentChange
	"return the current change being viewed, or nil if none"
	listIndex = 0 ifTrue: [ ^nil ].
	^changeList at: listIndex