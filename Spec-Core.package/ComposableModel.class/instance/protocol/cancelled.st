cancelled

	^ window value
		ifNil: [ false ]
		ifNotNil: [ :w | w cancelled ]