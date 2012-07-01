drawing
basicColor

	^ extension
		ifNil: [ color]
		ifNotNil: [ extension fillStyle ifNil: [ color ]].