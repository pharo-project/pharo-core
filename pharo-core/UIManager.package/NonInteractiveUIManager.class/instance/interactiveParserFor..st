settings
interactiveParserFor: requestor	
	^ (requestor respondsTo: #interactive) and: [ requestor interactive ]