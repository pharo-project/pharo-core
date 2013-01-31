accessing
window

	^ window
		ifNil: [
			owner
				ifNil: [ nil ]
				ifNotNil: [:o | o window ]]