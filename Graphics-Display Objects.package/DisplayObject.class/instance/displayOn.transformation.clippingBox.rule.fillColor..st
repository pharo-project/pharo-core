displaying-generic
displayOn: aDisplayMedium transformation: displayTransformation clippingBox: clipRectangle rule: ruleInteger fillColor: aForm 
	"Display the receiver where a DisplayTransformation is provided as an 
	argument, rule is ruleInteger and mask is aForm. No translation. 
	Information to be displayed must be confined to the area that intersects 
	with clipRectangle."

	self displayOn: aDisplayMedium
		transformation: displayTransformation
		clippingBox: clipRectangle
		align: self relativeRectangle origin
		with: self relativeRectangle origin
		rule: ruleInteger
		fillColor: aForm