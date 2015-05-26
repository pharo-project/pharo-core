privateReplaceFrom: start to: stop with: aText
	| newText  |
	newText := aText.
	" it is possible to have cr in case of copy-paste "
	(aText string includesAnyOf: {(Character cr). (Character lf)})
		ifTrue: [ 
			newText := newText asString copyReplaceAll: String cr with: '' asTokens: false.
			newText := (newText asString copyReplaceAll: String lf with: '' asTokens: false) asText ].
	super privateReplaceFrom: start to: stop with: newText