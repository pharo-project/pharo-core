expandRectangle: aRectangle
	"Answer a rectangle whose size has been expanded by the receiver from all sides"
	| newOrigin newCorner |
	newOrigin := aRectangle origin - self.
	newCorner := aRectangle corner + self.
	^ Rectangle origin:  newOrigin extent: (newCorner - newOrigin)

