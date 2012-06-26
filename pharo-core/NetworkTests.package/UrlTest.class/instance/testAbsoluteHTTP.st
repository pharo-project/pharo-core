tests
testAbsoluteHTTP
	
	url := 'hTTp://chaos.resnet.gatech.edu:8000/docs/java/index.html?A%20query%20#part' asUrl.

	self assert: url schemeName = 'http'.
	self assert: url authority = 'chaos.resnet.gatech.edu'.
	self assert: url path first = 'docs'.
	self assert: url path size = 3.
	self assert: url query = 'A%20query%20'.
	self assert: url fragment = 'part'.