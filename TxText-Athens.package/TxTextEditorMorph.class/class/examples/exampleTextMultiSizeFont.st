exampleTextMultiSizeFont

	"self exampleTextMultiSizeFont"

	| text |
	text := TxModel new.
100 timesRepeat: [ 	
	1 to: 10 do: [ :i | | font | 

		text endPosition insert: 'The quick brown fox jumps over the lazy dog 1234567890'.
		font := LogicalFont familyName: 'Tahoma' pointSize: 9 + i.
		
		(text endPosition moveToLineStart selectTo: text endPosition) applyAttribute: (TxFontAttribute with: font).
		text endPosition insert: String cr.
	].
].
	^ self openInWindowWithText: text