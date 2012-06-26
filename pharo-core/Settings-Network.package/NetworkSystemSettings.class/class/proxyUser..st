settings
proxyUser: aUser
	| stream |
	stream := (aUser ifNil: ['']) readStream.
	ProxyUser := (Base64MimeConverter mimeEncode: stream) contents.
	HTTPSocket proxyUser: self proxyUser password: self proxyPassword

