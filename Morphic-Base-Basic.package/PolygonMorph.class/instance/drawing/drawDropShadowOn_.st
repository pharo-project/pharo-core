drawDropShadowOn: aCanvas 
	"Display the receiver, a spline curve, approximated by straight 
	line segments."
	| array |
	vertices size < 1
		ifTrue: [self error: 'a polygon must have at least one point'].
	closed ifTrue:
		[aCanvas drawPolygon: self getVertices fillStyle: self shadowColor.
		].