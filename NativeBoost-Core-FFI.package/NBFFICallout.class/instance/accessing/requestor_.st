requestor: aRequestor
	requestor := aRequestor.
	
	(requestor respondsTo: #ffiCalloutOptions) ifTrue: [
		self parseOptions: requestor ffiCalloutOptions
	]
