updateMorph
	morph ifNil: [ ^ self ].
	changeHandler execute
	