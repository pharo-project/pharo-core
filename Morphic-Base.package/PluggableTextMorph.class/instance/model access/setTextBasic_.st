setTextBasic: aText

	scrollBar setValue: 0.0.
	((self textMorph contents size = 0) and: [self wrapFlag])
		ifTrue: [ 
			self textMorph
				contents: aText 
				wrappedTo: self innerExtent x ]
		ifFalse: [
			self textMorph newContents: aText].
	
	self hasUnacceptedEdits: false.
	self setScrollDeltas.