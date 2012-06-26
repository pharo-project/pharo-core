displaying
displayOn: aDisplayMedium transformation: displayTransformation clippingBox: clipRectangle align: alignmentPoint with: relativePoint rule: ruleInteger fillColor: aForm 
	"Graphically, it means nothing to scale a Form by floating point values.  
	Because scales and other display parameters are kept in floating point to 
	minimize round off errors, we are forced in this routine to round off to the 
	nearest integer."

	| absolutePoint scale magnifiedForm |
	absolutePoint := displayTransformation applyTo: relativePoint.
	absolutePoint := absolutePoint x asInteger @ absolutePoint y asInteger.
	displayTransformation noScale
		ifTrue: [magnifiedForm := self]
		ifFalse: 
			[scale := displayTransformation scale.
			scale := scale x @ scale y.
			(1@1 = scale)
					ifTrue: [scale := nil. magnifiedForm := self]
					ifFalse: [magnifiedForm := self magnify: self boundingBox by: scale]].
	magnifiedForm
		displayOn: aDisplayMedium
		at: absolutePoint - alignmentPoint
		clippingBox: clipRectangle
		rule: ruleInteger
		fillColor: aForm