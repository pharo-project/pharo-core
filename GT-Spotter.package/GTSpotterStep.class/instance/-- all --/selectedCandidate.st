selectedCandidate

	^ self selected
		ifNotNil: [ self selected value ]
		ifNil: [ nil ]