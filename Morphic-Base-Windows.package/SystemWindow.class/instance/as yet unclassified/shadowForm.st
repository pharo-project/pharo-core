shadowForm
	"Optimized version of shadowForm for this rectangular shaped morph."
	| canvas |
	canvas := (Display defaultCanvasClass extent: self fullBounds extent depth: 1)
				asShadowDrawingCanvas: Color black. "Color black represents one for 1bpp"
	canvas fillColor: Color black.
	^ canvas form offset: bounds topLeft
