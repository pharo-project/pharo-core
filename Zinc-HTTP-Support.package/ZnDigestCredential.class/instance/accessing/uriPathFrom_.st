uriPathFrom: urlObject
	^ urlObject pathPrintString ifNil: [ '/' ]