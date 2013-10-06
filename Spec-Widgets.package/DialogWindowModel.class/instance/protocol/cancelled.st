cancelled

	^ self widget
		ifNil: [ false ]
		ifNotNil: [:w | w cancelled ]