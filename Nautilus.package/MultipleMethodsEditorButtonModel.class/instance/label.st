protocol
label

	^ label 
		ifNil: [ '' ]
		ifNotNil: [:l | l ]