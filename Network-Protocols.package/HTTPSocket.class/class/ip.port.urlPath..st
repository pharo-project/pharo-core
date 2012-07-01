utilities
ip: byteArrayIP port: portNum urlPath: urlPathString 
	"HTTPSocket  ip: #[127 0 0 1] port: 8080 urlPath: '/beam'"
	
	^String streamContents: [:stream | 
		byteArrayIP
			do: [:each | each printOn: stream]
			separatedBy: [stream nextPut: $.].
		stream nextPut: $:.
		portNum printOn: stream.
		stream nextPutAll: urlPathString]