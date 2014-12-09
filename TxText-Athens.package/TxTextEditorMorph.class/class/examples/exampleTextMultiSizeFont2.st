exampleTextMultiSizeFont2

	"self exampleTextMultiSizeFont2"

	| text font |
	text := TxModel new.
	
	1 to: 100000 do: [ :i | 

		text endPosition insert: i asString , ' The quick brown fox jumps over the lazy dog 1234567890'.
		text endPosition insert: String cr.
	].

	font := LogicalFont familyName: 'Tahoma' pointSize: 12.
	text selectAll applyAttribute: (TxFontAttribute with: font).


	^ self openInWindowWithText: text