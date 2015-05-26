rgiveFocusToCurrent

	self hasSingleElement ifTrue: [ ^ self ].
	self setDefault.
	self updateLayoutForSingleWithButtons