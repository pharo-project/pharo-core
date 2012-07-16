protocol
result

	^ self window 
		ifNil: [ false ]
		ifNotNil: [:w | w cancelled not ]