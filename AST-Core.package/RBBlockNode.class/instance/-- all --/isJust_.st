isJust: literal
	body  statements size = 1 ifFalse: [ ^ false ].
	body  statements anyOne isLiteralNode ifFalse: [ ^ false ].
	^ body  statements anyOne value == literal