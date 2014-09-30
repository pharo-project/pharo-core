addButtons
	buttons ifNil: [
		buttons := pagerModel isDependenciesShown ifTrue: [ GLMPagerPaneDependencyButtonsMorph new ] ifFalse: [ GLMPagerPaneButtonsMorph new ].
		buttons pagerModel: pagerModel.
		self addMorph: buttons fullFrame: (0@0 extent: 1@1).
	]
	