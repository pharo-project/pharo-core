display
setGradientColor: evt
	"For backwards compatibility with GradientFillMorph"

	self flag: #fixThis.
	self changeColorTarget: self selector: #gradientFillColor:
		originalColor: (self fillStyle isGradientFill
			ifTrue: [self fillStyle colorRamp last value]
			ifFalse: [color])
		hand: evt hand.