interface
includesFileNamed: aString
	
	"avoid the slower default method and simply do a head request "
	ZnClient new
		systemPolicy;
		beOneShot;
		username: self user password: self password;
		ifFail: [ :exception| 
			exception response code = 404
				ifTrue: [ ^ false ].
			exception pass];
		head: (self urlForFileNamed: aString).
		
	^ true