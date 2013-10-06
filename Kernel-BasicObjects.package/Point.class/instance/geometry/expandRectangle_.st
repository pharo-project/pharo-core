expandRectangle: aRectangle
	"Answer a rectangle whose size has been expanded by the receiver which represents
	the x and y amount to expand from both sides."
	| newOrigin newCorner |
	newOrigin := aRectangle origin - self.
	newCorner := aRectangle corner + self.
	^ Rectangle origin:  newOrigin extent: (newCorner - newOrigin)

