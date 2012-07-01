bordering
shapeBorder: aColor width: borderWidth
	"A simplified version for shapes surrounded by transparency (as SketchMorphs).
	Note also this returns a new form that may be larger, and does not affect the original."
	| shapeForm borderForm newForm |
	newForm := Form extent: self extent + (borderWidth*2) depth: self depth.
	newForm fillColor: Color transparent.
	self displayOn: newForm at: (0@0) + borderWidth.
	"First identify the shape in question as a B/W form"
	shapeForm := (newForm makeBWForm: Color transparent) reverse.
	"Now find the border of that shape"
	borderForm := shapeForm borderFormOfWidth: borderWidth sharpCorners: false.
	"Finally use that shape as a mask to paint the border with color"
	^ newForm fillShape: borderForm fillColor: aColor