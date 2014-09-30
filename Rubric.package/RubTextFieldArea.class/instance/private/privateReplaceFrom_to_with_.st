privateReplaceFrom: start to: stop with: aText
	| newText  |
	newText := aText.
	" it is possible to have cr in case of copy-paste "
	(aText string includesAnyOf: {(Character cr). (Character lf)})
		ifTrue: [ 
			newText := newText copyReplaceAll: String cr with: '' asTokens: false.
			newText := newText copyReplaceAll: String lf with: '' asTokens: false ].
	super privateReplaceFrom: start to: stop with: newText