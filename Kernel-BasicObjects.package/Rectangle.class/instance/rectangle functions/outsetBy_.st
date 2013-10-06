outsetBy: delta 
	"Answer a Rectangle that is outset from the receiver by delta. delta is a 
	Rectangle, Point, or scalar."

	(delta isRectangle)
		ifTrue: [^Rectangle 
					origin: origin - delta origin 
					corner: corner + delta corner]
		ifFalse: [^Rectangle 
					origin: origin - delta 
					corner: corner + delta]