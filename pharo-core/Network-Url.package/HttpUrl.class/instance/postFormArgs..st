downloading
postFormArgs: args
	| contents request |
	request := realm ifNotNil: [Passwords at: realm ifAbsent: ['']]
		ifNil: [''].
	request = '' ifFalse: [request := 'Authorization: Basic ', request, String crlf].
		"Why doesn't Netscape send the name of the realm instead of Basic?"
	contents := (HTTPSocket httpPostDocument: self asString args: args
				accept: 'application/octet-stream' request: request).

	self checkAuthorization: contents retry: [^ self postFormArgs: args].

	^self normalizeContents: contents