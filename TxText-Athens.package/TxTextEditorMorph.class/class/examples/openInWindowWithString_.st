openInWindowWithString: aString

	| text |
	
	text := TxModel new.
	text atAttribute: TxFontAttribute  put: (LogicalFont familyName: 'Microsoft Sans Serif' pointSize: 16 ).
	text atAttribute: TxForeColorAttribute  put: (Color black).
	
	text endPosition insert: aString.
	
	^ self openInWindowWithText: text