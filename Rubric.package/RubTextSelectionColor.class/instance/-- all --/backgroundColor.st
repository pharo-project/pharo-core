backgroundColor
	^ self backgroundColorBlock ifNotNil: [:bcb | bcb value]