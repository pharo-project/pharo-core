includesFileNamed: aString
	"avoid the slower default method and simply do a head request "
	self httpClient
		numberOfRetries: 0;
		ifFail: [ :exception| 
			exception response code = 404
				ifTrue: [ ^ false ].
			exception pass];
		head: (self urlForFileNamed: aString).
	^ true