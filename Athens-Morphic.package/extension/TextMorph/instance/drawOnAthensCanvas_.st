drawOnAthensCanvas: aCanvas

	"Draw the receiver on a canvas.
	Draw keyboard focus if appropriate."

	| fauxBounds |

	self setDefaultContentsIfNil.
	super drawOnAthensCanvas: aCanvas.  "Border and background if any"
	
	"nothing to draw?"
	(self startingIndex > text size)
		ifTrue: [ ^ self ].

	"Hack here:  The canvas expects bounds to carry the location of the text, but we also need to communicate clipping."
	fauxBounds := self bounds topLeft corner: self innerBounds bottomRight.
	
	self paragraph drawOnAthensCanvas: aCanvas bounds: fauxBounds.
	
	