noteNewOwner: aMorph
	super noteNewOwner: aMorph.
	self color: self backgroundColor.
	self paragraphProvider announcer weak subscribe: MorphGotFocus send: #updateContents to: self.
	lineAnnotation := self lineAnnotationMorph.
	wrappingPolicyMorph := self wrappingPolicyLabelMorph.
	lineNumbersDisplayMorph := self lineNumbersDisplayLabelMorph.
	formatAsYouReadMorph := self formatAsYouReadMorph.
	browseVariablesMorph := self browseVariablesMorph.
	row := self theme
		newRowIn: self
		for:
			{self spacer: 2.
			lineAnnotation.
			self spacer: 2.
			formatAsYouReadMorph.
			self spacer: 2.
			wrappingPolicyMorph.
			self spacer: 2.
			lineNumbersDisplayMorph.
			self spacer: 2.
			browseVariablesMorph.
			self spacer: 2}.	wrappingPolicyMorph on: #mouseDown send: #changeWrappingPolicy to: self.
	lineNumbersDisplayMorph on: #mouseDown send: #changeLineNumbersDisplay to: self.
	browseVariablesMorph on: #mouseDown send: #browseVariableReferences: to: self.
	row color: Color transparent.
	row hResizing: #spaceFill.
	lineAnnotation hResizing: #spaceFill.
	self addMorph: row