as yet unclassified
drawOn: aCanvas
	"Draw based on enablement."
	
	self enabled
		ifTrue: [aCanvas
					drawString: self contents
					in: self bounds
					font: self fontToUse
					color: self color]
		ifFalse: [|c|
				c := self theme labelDisabledColorFor: self.
				self disabledStyle == #inset ifTrue: [
					aCanvas
						drawString: self contents
						in: (self bounds translateBy: 1)
						font: self fontToUse
						color: c muchLighter].
				aCanvas
					drawString: self contents
					in: self bounds
					font: self fontToUse
					color: c]