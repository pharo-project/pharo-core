testAbsoluteHTTP
	
	url := 'hTTp://chaos.resnet.gatech.edu:8000/docs/java/index.html?A%20query%20#part' asUrl.

	self assert: url scheme = 'http'.
	self assert: url host = 'chaos.resnet.gatech.edu'.
	self assert: url firstPathSegment = 'docs'.
	self assert: url pathSegments size = 3.
	self assert: url queryKeys first = 'A query '.
	self assert: url fragment = 'part'.