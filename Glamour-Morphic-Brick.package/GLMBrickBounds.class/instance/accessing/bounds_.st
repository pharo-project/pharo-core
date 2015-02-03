bounds: aRectangle

	self bounds width = aRectangle width ifFalse: [ self markWidthDirty ].
	self bounds height = aRectangle height ifFalse: [ self markHeightDirty ].
	bounds := aRectangle