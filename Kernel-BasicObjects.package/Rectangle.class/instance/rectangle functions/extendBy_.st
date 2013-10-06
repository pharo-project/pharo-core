extendBy: delta 
	"Answer a Rectangle with the same origin as the receiver, but whose corner is offset by delta. delta is a 
	Rectangle, Point, or scalar."

	(delta isRectangle)
		ifTrue: [^Rectangle 
					origin: origin
					corner: corner + delta corner]
		ifFalse: [^Rectangle 
					origin: origin
					corner: corner + delta]