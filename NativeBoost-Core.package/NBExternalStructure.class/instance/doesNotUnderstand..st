dnu
doesNotUnderstand: aMessage

	self class isInitialized ifFalse: [
		"retry send after initialization"
		self class initializeAccessors.
		^ aMessage sentTo: self
	].

	^ super doesNotUnderstand: aMessage