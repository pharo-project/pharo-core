accessing
fields

	^ currentFields ifNil: [
		self rebuildFieldAccessors.
		currentFields
	].