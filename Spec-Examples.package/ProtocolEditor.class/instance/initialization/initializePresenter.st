initializePresenter

	viewer whenClassChanged: [ :class | text behavior: class ].

	viewer whenProtocolChangedDo: [ :item | 
		item 
			ifNil: [ text text: '' ]
			ifNotNil: [ 
				viewer resetEventSelection.
				text text: item sourceCode ] ].
	viewer whenEventChangedDo: [ :item | 
		item 
			ifNil: [ text text: '' ]
			ifNotNil: [ 
				viewer resetProtocolSelection.
				text text: item sourceCode ] ]