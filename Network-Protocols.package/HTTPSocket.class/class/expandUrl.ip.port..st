utilities
expandUrl: newUrl ip: byteArrayIP port: portNum
	"self expandUrl: 'www.pharo-project.org' ip: #[127 0 0 1] port: 8080"
	
	(newUrl beginsWith: '../') ifTrue: [^self ip: byteArrayIP port: portNum urlPath: (newUrl allButFirst: 2)].
	(newUrl beginsWith: '/') ifTrue: [^self ip: byteArrayIP port: portNum urlPath: newUrl].
	^newUrl