acceptContents: aString

	self fileName ifNotNil: [ self saveString: aString asString toFile: self fileName ].
	acceptAction ifNotNil: [ acceptAction value: aString ].
	self contents: aString.
	^ true