ensureWidget

	self widget ifNotNil: [ :w | ^ w ].
	self buildWithSpec.
	^ self widget