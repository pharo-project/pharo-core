do: aBlock
	self hasLinks ifFalse: [ ^ aBlock value ].
	^ self withLinksDo: aBlock