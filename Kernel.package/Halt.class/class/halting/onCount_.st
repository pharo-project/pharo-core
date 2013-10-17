onCount: anInteger 
	"Halt on the anInteger-th time through"
	
	| currentCount |
	currentCount := self isCounting 
		ifTrue: [ self callsUntilHaltOnCount ]
		ifFalse: [ anInteger ].
	self callsUntilHaltOnCount: currentCount - 1.
	self callsUntilHaltOnCount = 0 ifTrue: [ self signal ].