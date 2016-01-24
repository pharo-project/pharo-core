drawOnAthensCanvas: anAthensCanvas 
	| border |
	border := self borderStyle. 
	anAthensCanvas setPaint: self fillStyle.
	
	"Fill the given rectangle."
	anAthensCanvas drawShape: (self innerBounds).

	(anAthensCanvas setStrokePaint: border).
	anAthensCanvas drawShape: (self bounds insetBy: (border width /2.0 )).
	

	"aBorderStyle frameRectangle: aRectangle on: self "
	
	