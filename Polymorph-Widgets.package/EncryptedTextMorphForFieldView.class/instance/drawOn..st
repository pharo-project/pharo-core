drawing
drawOn: aCanvas
	
	| fauxBounds |
	self setDefaultContentsIfNil.
	self perform: #drawOn: withArguments: {aCanvas} inSuperclass: Morph.
	(self startingIndex > text size)
		ifTrue: [self drawNullTextOn: aCanvas].
	"Hack here:  The canvas expects bounds to carry the location of the text, but we also need to communicate clipping."
	fauxBounds := self bounds topLeft corner: self innerBounds bottomRight.
	aCanvas encryptedParagraph: self paragraph bounds: fauxBounds color: color.