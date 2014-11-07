testCachedPresentation
	| dynamic currentPresentation |
	dynamic := GLMDynamicPresentation new.
	dynamic entity: 42.
	dynamic transformation: [ :entity | GLMTextPresentation new ].
	currentPresentation := dynamic currentPresentation.

	self assert: dynamic cachedPresentation == currentPresentation