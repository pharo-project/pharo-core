closeMenu
	self stopCompletionDelay.
	menuMorph
		ifNotNil: [ menuMorph delete ].
	menuMorph := nil.