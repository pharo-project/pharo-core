placeEmbeddedObject: anchoredMorphOrForm
	anchoredMorphOrForm relativeTextAnchorPosition ifNotNil:[:relativeTextAnchorPosition |
		anchoredMorphOrForm position: 
			relativeTextAnchorPosition +
			(anchoredMorphOrForm owner textBounds origin x @ (lineY - morphicOffset y)).
		^true
	].
	(anchoredMorphOrForm isMorph or: [anchoredMorphOrForm isPrimitiveCostume]) ifTrue: [
		anchoredMorphOrForm position: (destX@(lineY + line baseline - anchoredMorphOrForm height)) - morphicOffset
	] ifFalse: [
		self displayEmbeddedForm: anchoredMorphOrForm
	].
	destX := destX + anchoredMorphOrForm width + kern.
	^ true