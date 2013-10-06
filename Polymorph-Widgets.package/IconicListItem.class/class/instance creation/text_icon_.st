text: aText icon: form
	| morph |
	
	aText ifNotNil: [ morph := aText asMorph ].

	^ self new
		morph:	morph;
		icon: (AlphaImageMorph new image: form);
		yourself