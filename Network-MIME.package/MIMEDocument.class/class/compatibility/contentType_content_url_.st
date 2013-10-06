contentType: type content: content url: url
	^self contents: content mimeType: (MIMEType fromMIMEString: type asString) uri: url