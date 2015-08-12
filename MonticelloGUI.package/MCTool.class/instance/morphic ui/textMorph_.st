textMorph: aSymbol
	| textMorph |
	textMorph := RubPluggableTextMorph on: self text: aSymbol accept: (aSymbol, ':') asSymbol readSelection: nil menu: nil.
	textMorph beWrapped.
	textMorph announcer when: RubTextAcceptRequest send: #accept to: self.
	textMorph hScrollbarShowNever.  
	^ textMorph