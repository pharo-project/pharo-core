downloading
normalizeContents: webDocument
	(webDocument isString) ifTrue: [
		^MIMEDocument
			contentType: 'text/plain'
			content: 'error occured retrieving ', self asString, ': ', webDocument
			url: (Url absoluteFromText: '')].
	webDocument contentType = MIMEDocument defaultContentType ifTrue: [
		^MIMEDocument 
			contents: webDocument content 
			mimeType: (MIMEDocument guessTypeFromName: self path last) 
			uri: webDocument url ].

	^webDocument