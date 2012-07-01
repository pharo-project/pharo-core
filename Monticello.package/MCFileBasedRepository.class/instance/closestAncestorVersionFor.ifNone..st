as yet unclassified
closestAncestorVersionFor: anAncestry ifNone: errorBlock
	^ self cacheAllFileNamesDuring:
		[super closestAncestorVersionFor: anAncestry ifNone: errorBlock]