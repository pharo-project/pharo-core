model access
setTextBasic: aText

	scrollBar setValue: 0.0.
	self textMorph contents size = 0
		ifTrue: [ 
			self textMorph
				contents: aText 
				wrappedTo: self innerBounds width - 6 ]
		ifFalse: [
			self textMorph newContents: aText].
	
	self hasUnacceptedEdits: false.
	self setScrollDeltas.