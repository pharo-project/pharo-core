sourceCodeFrom: aTextMorph

	aTextMorph locked ifTrue: [ ^ aTextMorph textMorph text ].

	^ self sourceCode