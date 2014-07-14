drawOn: aCanvas
	"Draw based on state."

	self enabled
		ifTrue: [aCanvas
					drawString: self contents
					in: self bounds
					font: self fontToUse
					color: self color]
		ifFalse: [self disabledStyle == #inset
					ifTrue: [aCanvas
							drawString: self contents
							in: (self bounds translateBy: 1)
							font: self fontToUse
							color: self disabledColor muchLighter;
							drawString: self contents
							in: self bounds
							font: self fontToUse
							color: self disabledColor]
					ifFalse: [aCanvas
								drawString: self contents
								in: self bounds
								font: self fontToUse
								color: self disabledColor]]