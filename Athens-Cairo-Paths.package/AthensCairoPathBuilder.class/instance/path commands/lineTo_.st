lineTo: aPoint

	endPoint := self toAbsolute: aPoint.
	^ self lineToX: endPoint x asFloat Y: endPoint y asFloat