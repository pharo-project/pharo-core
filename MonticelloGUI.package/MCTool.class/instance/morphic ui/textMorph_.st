textMorph: aSymbol
	| textMorph |
	textMorph := (RubPluggableTextMorph
		on: self
		text: aSymbol
		accept: (aSymbol , ':') asSymbol
		readSelection: nil
		menu: nil)
		beWrapped;
		beForSmalltalkComment;
		hScrollbarShowNever;
		yourself.
	textMorph announcer when: RubTextAcceptRequest send: #accept to: self.
	textMorph hasUnacceptedEdits: false.
	textMorph getMenuPolicy: RubNullGetMenuPolicy new.
	^ textMorph