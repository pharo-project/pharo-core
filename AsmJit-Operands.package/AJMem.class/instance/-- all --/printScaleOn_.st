printScaleOn: aStream
	aStream nextPutAll: ' * '.
	(2 raisedToInteger: shift) printOn: aStream