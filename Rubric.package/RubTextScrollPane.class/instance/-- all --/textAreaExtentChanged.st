textAreaExtentChanged
	self fitScrollTarget.
	self owner ifNotNil: [ :o | o textAreaExtentChanged ]
