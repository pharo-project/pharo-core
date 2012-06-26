settings
proxyUser
	| encoded stream |
	encoded := ProxyUser ifNil: [ProxyUser := ''].
	stream := ReadWriteStream on: (String new: 16). 
	stream nextPutAll: encoded.
	^ (Base64MimeConverter mimeDecodeToChars: stream) contents
