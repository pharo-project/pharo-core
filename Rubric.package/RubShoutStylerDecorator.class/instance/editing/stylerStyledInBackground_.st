stylerStyledInBackground: styledCopyOfText
	text ifNil: [ ^self ].
	text string = styledCopyOfText string
		ifTrue: [ self stylerStyled: styledCopyOfText ].
