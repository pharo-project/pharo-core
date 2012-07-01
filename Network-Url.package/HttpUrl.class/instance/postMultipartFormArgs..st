downloading
postMultipartFormArgs: args
	| contents request |
	request := realm ifNotNil: [Passwords at: realm ifAbsent: ['']]
		ifNil: [''].
	request = '' ifFalse: [request := 'Authorization: Basic ', request, String crlf].
		"Why doesn't Netscape send the name of the realm instead of Basic?"
	contents := (HTTPSocket httpPostMultipart: self asString args: args
				accept: 'application/octet-stream' request: request).

	self checkAuthorization: contents retry: [^ self postMultipartFormArgs: args].

	^self normalizeContents: contents