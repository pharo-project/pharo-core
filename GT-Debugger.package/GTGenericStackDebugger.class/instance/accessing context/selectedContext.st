selectedContext

	^ self browser ifNotNil: [
		((self browser paneNamed: #stack) port: #selection) value ]
	