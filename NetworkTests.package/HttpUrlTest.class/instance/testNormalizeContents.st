testing
testNormalizeContents
	| url document |
	url := Url absoluteFromText: 'http://www.pharo-project.org/logo.jpg'.
	document := MIMEDocument
		contents: #(1 2 3 4)
		mimeType: MIMEDocument defaultContentType
		uri: url.
	url normalizeContents: document