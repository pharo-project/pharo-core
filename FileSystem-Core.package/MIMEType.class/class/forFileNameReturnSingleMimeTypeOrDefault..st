instance creation
forFileNameReturnSingleMimeTypeOrDefault: fileName
	| types |
	types := self forFileNameReturnMimeTypesOrDefault: fileName.
	^types first