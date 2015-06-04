render: aRenderable
	| dock offset bottomOffset |
	window := GLMSystemWindow new model: aRenderable.
	self installActionsOnModel: window fromPresentation: aRenderable.
	self installKeystrokeActionsOnMorph: window fromPresentation: aRenderable.
	self setLabelOf: window for: aRenderable.
	offset := 4.
	bottomOffset := 0.
	dock := self renderToolbarForPresentation: aRenderable inMorph: window.
	dock hResizing: #shrinkWrap.
	window toolbarBox: dock.
	bottomOffset := self handlePotentialStatusbarFor: aRenderable.
	window
		addMorph: (self renderObject: aRenderable)
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) offsets: (0 @ offset corner: 0 @ bottomOffset)).
	self setPotentialBackgroundColorFor: aRenderable.
	aRenderable when: GLMPresentationUpdated send: #actOnPresentationUpdated: to: self.
	aRenderable watcherPane notNil
		ifTrue: [ GLMMorphicWatcherRenderer render: aRenderable watcherPane from: self renderer ].
	^ window