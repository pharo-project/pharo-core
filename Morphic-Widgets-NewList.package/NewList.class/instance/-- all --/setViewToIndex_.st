setViewToIndex: index

	index isZero ifTrue: [ ^ self ].
	self scrollToShow: (self renderer drawBoundsForIndex: index)