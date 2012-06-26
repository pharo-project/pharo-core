accessing
directory
	directory ifNil:
		[directory := FileDirectory default directoryNamed: 'mctest'.
		directory assureExistence].
	^ directory