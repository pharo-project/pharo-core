httpPostDocument: url args: arguments accept: mimeType
	^ self 
		httpPostDocument: url 
		args: arguments 
		accept: mimeType 
		request: nil