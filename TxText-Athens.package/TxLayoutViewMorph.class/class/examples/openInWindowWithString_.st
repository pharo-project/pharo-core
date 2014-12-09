openInWindowWithString: aString

	| text |
	
	text := TxModel new.
	text atAttribute: TxFontAttribute  put: (LogicalFont familyName: 'Monaco' pointSize: 20 ).
	text endPosition insert: aString.
	
	^ self openInWindowWithText: text