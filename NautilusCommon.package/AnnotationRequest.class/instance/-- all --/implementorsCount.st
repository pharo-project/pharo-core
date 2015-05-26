implementorsCount
	"A report of how many implementors there are of the message."
	
	| implementorsCount |
	implementorsCount := selector implementors size.
	^ implementorsCount = 1
		ifTrue: [ '1 implementor' ]
		ifFalse: [ implementorsCount printString , ' implementors' ]