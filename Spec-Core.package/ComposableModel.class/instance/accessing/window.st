window

	^ window contents
		ifNil: [
			owner
				ifNil: [ nil ]
				ifNotNil: [:o | o window ]]