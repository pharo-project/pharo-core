onLabelTextChanged

	labelMorph ifNil: [ 
		self label text size = 0 ifTrue: [ ^ self ].
		labelMorph := StringMorph contents: self label text font: self font.
		self updateExtent.
		self addMorph: labelMorph.
		^ self.
	].

	self label text size = 0 ifTrue: [
		labelMorph delete.
		labelMorph := nil.
		self updateExtent.
		^ self
	].

	self setLabelText: self label text.
	self updateExtent.

	