protocol
color

	^ self widget
		ifNil: [ Color white ]
		ifNotNil: [:w | w color ]