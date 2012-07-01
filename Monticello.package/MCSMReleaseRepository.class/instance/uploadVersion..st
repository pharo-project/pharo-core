as yet unclassified
uploadVersion: aVersion
	| result stream |
	result := HTTPSocket
		httpPut: (self stringForVersion: aVersion)
		to: self squeakMapUrl, '/upload/', aVersion fileName
		user: user
		passwd: password.
	self checkResult: result.
	stream := result readStream.
	stream upToAll: 'http://'.
	^ 'http://', stream upToEnd