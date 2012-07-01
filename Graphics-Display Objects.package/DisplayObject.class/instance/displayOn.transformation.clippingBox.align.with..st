displaying-generic
displayOn: aDisplayMedium transformation: displayTransformation clippingBox: clipRectangle align: alignmentPoint with: relativePoint 
	"Display primitive where a DisplayTransformation is provided as an 
	argument, rule is over and mask is Form black. Information to be 
	displayed must be confined to the area that intersects with clipRectangle."

	self displayOn: aDisplayMedium
		transformation: displayTransformation
		clippingBox: clipRectangle
		align: alignmentPoint
		with: relativePoint
		rule: Form over
		fillColor: nil