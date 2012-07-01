expanding-collapsing
notExpandedToggleImage
	^ notExpandedToggleImage ifNil: [notExpandedToggleImage := ImageMorph new image: self notExpandedForm].
