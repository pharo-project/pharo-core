matchTokenFilter: aFilter

	aFilter token ifEmpty: [ ^ true ].
	
	^ self item name 
		includesSubstring: aFilter token
		caseSensitive: false