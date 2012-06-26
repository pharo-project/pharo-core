displaying-generic
displayOn: aDisplayMedium transformation: displayTransformation clippingBox: clipRectangle 
	"Display primitive for the receiver where a DisplayTransformation is 
	provided as an argument. Alignment is defaulted to the receiver's 
	rectangle. Information to be displayed must be confined to the area that 
	intersects with clipRectangle."

	self displayOn: aDisplayMedium
		transformation: displayTransformation
		clippingBox: clipRectangle
		align: self relativeRectangle center
		with: self relativeRectangle center
		rule: Form over
		fillColor: nil