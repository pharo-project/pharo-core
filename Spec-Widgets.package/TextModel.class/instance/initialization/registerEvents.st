registerEvents

	textHolder whenChangedDo: [ self changed: #getText ].
	readSelectionHolder whenChangedDo: [ self changed: #readSelection ].
	enabledHolder whenChangedDo: [ :bool | self widget ifNotNil: [:w | w enabled: bool ] ]