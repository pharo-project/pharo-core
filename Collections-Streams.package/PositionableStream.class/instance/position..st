positioning
position: anInteger 
	"Set the current position for accessing the objects to be anInteger, as long 
	as anInteger is within the bounds of the receiver's contents. If it is not, 
	create an error notification."

	(anInteger >= 0 and: [anInteger <= readLimit])
		ifTrue: [position := anInteger]
		ifFalse: [self positionError]