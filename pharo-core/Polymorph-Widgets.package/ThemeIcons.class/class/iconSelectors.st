class initialization
iconSelectors

	^ self class selectors select: [:each | '*Icon' match: each asString].
	