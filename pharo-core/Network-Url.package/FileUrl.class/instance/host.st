accessing
host
	"Return the host name, either 'localhost', '', or a fully qualified domain name."
	
	^host ifNil: ['']