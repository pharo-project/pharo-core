settings
proxyPassword
	| encoded stream |
	encoded := ProxyPassword ifNil: [ProxyPassword := ''].
	stream := ReadWriteStream on: (String new: 16).
	stream nextPutAll: encoded.
	^ (Base64MimeConverter mimeDecodeToChars: stream) contents.
