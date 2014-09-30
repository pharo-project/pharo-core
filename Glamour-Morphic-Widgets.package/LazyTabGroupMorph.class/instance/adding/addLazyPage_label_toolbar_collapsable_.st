addLazyPage: aBlock label: aStringOrMorph toolbar: aToolbar collapsable: aBoolean
	| newPage label innerLabel |
	newPage := LazyTabPage new.
	newPage
		lazyPageMorphCreation: aBlock; 
		labelMorph: aStringOrMorph; 
		toolbar: aToolbar.
	innerLabel := aStringOrMorph isMorph
		ifTrue: [aStringOrMorph]
		ifFalse: [
			|labelMorph|
			labelMorph := GLMButton new disable.
			labelMorph label text: aStringOrMorph.
			labelMorph
		].
	label := aBoolean 
			ifTrue: [UITheme builder newRow: { 
				innerLabel .
				UITheme builder
					newCloseControlFor: nil
					action: [self removePage: newPage]
					help: nil}]
			ifFalse: [innerLabel].
	self 
		addPage: newPage
		label: label.