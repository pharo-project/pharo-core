addLazyPage: aBlock label: aStringOrMorph toolbar: aToolbar collapsable: aBoolean
	| newPage label |
	newPage := LazyTabPage new.
	newPage
		lazyPageMorphCreation: aBlock; 
		labelMorph: aStringOrMorph; 
		toolbar: aToolbar.
	label := self 
			buildLabelFrom: aStringOrMorph 
			withAction: (aBoolean 
				ifTrue: [UITheme builder
					newCloseControlFor: nil
					action: [self removePage: newPage]
					help: nil]
				ifFalse: [nil]).
	self 
		addPage: newPage
		label: label.
	