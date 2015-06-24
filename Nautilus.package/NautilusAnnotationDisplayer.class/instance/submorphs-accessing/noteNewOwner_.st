noteNewOwner: aMorph
	super noteNewOwner: aMorph.
	self color: self backgroundColor.
	lineAnnotation := RubTextFieldArea new.
	lineAnnotation withoutAnyDecorator.
	lineAnnotation backgroundColor: Color transparent.
	lineAnnotation font: self fontToUse.
	lineAnnotation beReadOnly.
	lineAnnotation textColor: self textColor.
	wrappingPolicyMorph := self wrappingPolicyLabelMorph.
	lineNumbersDisplayMorph := self lineNumbersDisplayLabelMorph.
	formatAsYouReadMorph := self formatAsYouReadMorph.
	row := self theme
		newRowIn: self
		for:
			{(self spacer: 2).
			lineAnnotation.
			(self spacer: 2).
			formatAsYouReadMorph.
			(self spacer: 2).
			wrappingPolicyMorph.
			(self spacer: 2).
			lineNumbersDisplayMorph.
			(self spacer: 2)}.
	wrappingPolicyMorph on: #mouseDown send: #changeWrappingPolicy to: self.
	lineNumbersDisplayMorph on: #mouseDown send: #changeLineNumbersDisplay to: self.
	formatAsYouReadMorph on: #mouseDown send: #changeFormatAsYouReadPolicy to: self.
	row color: Color transparent.
	row hResizing: #spaceFill.
	lineAnnotation hResizing: #spaceFill.
	self addMorph: row