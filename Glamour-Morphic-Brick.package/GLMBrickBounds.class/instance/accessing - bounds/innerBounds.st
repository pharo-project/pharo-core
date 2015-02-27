innerBounds

	^ innerBounds ifNil: [ self updateCache. innerBounds ]