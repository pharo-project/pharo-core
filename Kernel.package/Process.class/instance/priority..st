accessing
priority: anInteger 
	"Set the receiver's priority to anInteger."
	(anInteger >= Processor lowestPriority and:[anInteger <= Processor highestPriority])
		ifTrue: [priority := anInteger]
		ifFalse: [self error: 'Invalid priority: ', anInteger printString]