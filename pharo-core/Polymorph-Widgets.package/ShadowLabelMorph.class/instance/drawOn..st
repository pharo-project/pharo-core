drawing
drawOn: aCanvas
	"Draw based on enablement."
	
	|pc|
	pc := self owner
		ifNil: [self paneColor]
		ifNotNil: [self owner color isTransparent
					ifTrue: [self owner paneColor]
					ifFalse: [self owner color]].
	aCanvas
		drawString: self contents
		in: (self bounds translateBy: 1)
		font: self fontToUse
		color: pc lighter;
		drawString: self contents
		in: self bounds
		font: self fontToUse
		color: self color.