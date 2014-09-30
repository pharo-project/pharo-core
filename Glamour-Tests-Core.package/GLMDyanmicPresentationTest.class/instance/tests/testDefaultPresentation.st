testDefaultPresentation
	| dynamic |
	dynamic := GLMDynamicPresentation new.
	dynamic entity: 42.
	dynamic transformation: [ :entity | GLMTextPresentation new ].
	self assert: dynamic currentPresentation presentations size equals: 1.
	self assert: (dynamic currentPresentation presentations first isKindOf: GLMTextPresentation).
	self assert: dynamic currentPresentation pane == dynamic pane