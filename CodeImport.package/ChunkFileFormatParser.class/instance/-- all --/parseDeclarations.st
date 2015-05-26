parseDeclarations
	[ readStream atEnd ] whileFalse: [
		self parseNextDeclaration.
	].
	^parsedDeclarations