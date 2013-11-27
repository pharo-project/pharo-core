cancelled

	^ window
		ifNil: [ false ]
		ifNotNil: [ :w | w cancelled ]