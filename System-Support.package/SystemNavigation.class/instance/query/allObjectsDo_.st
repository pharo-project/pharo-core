allObjectsDo: aBlock 
	"Evaluate the argument, aBlock, for each object in the system 
	excluding SmallIntegers."
	| object endMarker |
	object := self someObject.
	endMarker := Object new.
	[endMarker == object]
		whileFalse: [aBlock value: object.
			object := object nextObject]