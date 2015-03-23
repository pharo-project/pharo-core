drawOn: aCanvas
	"super drawOn: aCanvas."
	
	"translating canvas coordinates"
	 (aCanvas isKindOf: ClippingCanvas) ifTrue: [ ^self "no need to draw anything" ].
	self onDraw: (aCanvas copy setOrigin: (aCanvas origin + self globalBounds origin - self brickBounds origin) clipRect: (aCanvas clipRect translateBy: aCanvas origin))