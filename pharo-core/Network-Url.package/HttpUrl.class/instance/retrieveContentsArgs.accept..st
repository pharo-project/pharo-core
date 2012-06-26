downloading
retrieveContentsArgs: args accept: mimeType
	| contents request |
	request := realm ifNotNil: [Passwords at: realm ifAbsent: ['']] ifNil: [''].
	request = '' ifFalse: [request := 'Authorization: Basic ' , request , String crlf].
		"Why doesn't Netscape send the name of the realm instead of Basic?"

	contents := (HTTPSocket
		httpGetDocument: self withoutFragment asString
		args: args
		accept: mimeType
		request: request).

	self checkAuthorization: contents retry: [^ self retrieveContentsArgs: args].

	^ self normalizeContents: contents