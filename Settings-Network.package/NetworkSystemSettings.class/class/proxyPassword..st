settings
proxyPassword: aPassword
	| stream |
	stream := (aPassword ifNil: ['']) readStream.
	ProxyPassword := (Base64MimeConverter mimeEncode: stream) contents.
	HTTPSocket proxyUser: self proxyUser password: self proxyPassword
