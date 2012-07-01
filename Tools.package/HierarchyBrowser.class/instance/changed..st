initialization
changed: sym
	sym == #classList ifTrue: [self updateAfterClassChange].
	super changed: sym