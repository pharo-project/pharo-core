displaying-generic
displayOn: aDisplayMedium transformation: displayTransformation clippingBox: clipRectangle fixedPoint: aPoint 
	"Display the receiver where a DisplayTransformation is provided as an 
	argument, rule is over and mask is Form black. No translation. 
	Information to be displayed must be confined to the area that intersects 
	with clipRectangle."

	self displayOn: aDisplayMedium
		transformation: displayTransformation
		clippingBox: clipRectangle
		align: aPoint
		with: aPoint
		rule: Form over
		fillColor: nil