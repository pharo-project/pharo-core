performHeaderActionSelector

	^ self headerAction
		ifNil: [ nil ]
		ifNotNil: [ #performHeaderAction ]