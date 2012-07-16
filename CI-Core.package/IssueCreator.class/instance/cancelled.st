protocol
cancelled

	^ self window 
		ifNil: [ true ]
		ifNotNil: [:w | w cancelled ]