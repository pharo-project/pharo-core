as yet unclassified
updateColor
	| remaining alpha |
	remaining := (self timeout - self timeOfLastActivity).
	remaining < 1000 
		ifTrue: [
			alpha := remaining / 1000.0.
			self color: (self color alpha: alpha).
			self borderColor: (self borderColor alpha: alpha)
			]