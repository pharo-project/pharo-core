instance creation
forFileNameReturnMimeTypesOrDefault: fileName
	| mimeTypes |
	mimeTypes := self forFileNameReturnMimeTypesOrNil: fileName.
	mimeTypes ifNil: [^Array with: (MIMEType defaultStream)].
	^mimeTypes