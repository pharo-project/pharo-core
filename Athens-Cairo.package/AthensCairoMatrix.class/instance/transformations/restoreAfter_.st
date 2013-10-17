restoreAfter: aBlock
	|previous|
	previous := self copy.
	aBlock ensure: [ 
		self copyFromMatrix: previous. "just copy the memory"
		"self loadAffineTransform: previous" ]