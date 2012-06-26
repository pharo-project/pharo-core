bordering
shapeBorder: aColor width: borderWidth interiorPoint: interiorPoint
	sharpCorners: sharpen internal: internal
	"Identify the shape (region of identical color) at interiorPoint,
	and then add an outline of width=borderWidth and color=aColor.
	If sharpen is true, then cause right angles to be outlined by
	right angles.  If internal is true, then produce a border that lies
	within the identified shape.  Thus one can put an internal border
	around the whole background, thus effecting a normal border
	around every other foreground image."
	| shapeForm borderForm interiorColor |
	"First identify the shape in question as a B/W form"
	interiorColor := self colorAt: interiorPoint.
	shapeForm := (self makeBWForm: interiorColor) reverse
				findShapeAroundSeedBlock:
					[:form | form pixelValueAt: interiorPoint put: 1].
	"Reverse the image to grow the outline inward"
	internal ifTrue: [shapeForm reverse].
	"Now find the border fo that shape"
	borderForm := shapeForm borderFormOfWidth: borderWidth sharpCorners: sharpen.
	"Finally use that shape as a mask to paint the border with color"
	self fillShape: borderForm fillColor: aColor