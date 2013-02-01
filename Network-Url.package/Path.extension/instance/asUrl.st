*Network-Url
asUrl 
	^ FileUrl
		pathParts: self segments asOrderedCollection 
		isAbsolute: self isAbsolute