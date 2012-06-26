actions
urlForFileNamed: aString
	^ self locationWithTrailingSlash, aString encodeForHTTP