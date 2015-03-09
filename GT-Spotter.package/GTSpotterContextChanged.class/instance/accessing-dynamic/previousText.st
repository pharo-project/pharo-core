previousText
	^ self previous ifNil: ['']  ifNotNil: [ self previous text ]