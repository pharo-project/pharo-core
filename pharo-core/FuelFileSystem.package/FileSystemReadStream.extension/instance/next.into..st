*FuelFileSystem
next: number into: aCollection 
	| count |
	count := handle at: position read: aCollection startingAt: 1 count: number.
	position := position + count.
 	^ count < aCollection size
		ifTrue: [aCollection first: count]
		ifFalse: [aCollection]