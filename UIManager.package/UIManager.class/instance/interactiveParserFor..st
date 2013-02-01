settings
interactiveParserFor: requestor	
	
	requestor ifNil: [^ false ].
	^ (requestor respondsTo: #interactive) and: [ requestor interactive ]