testing
testPostMultipart
	| client file |
	file := FileSystem disk workingDirectory  / 'testPostMultiPart.txt'.
	file writeStreamDo: [ :stream | stream nextPutAll: '0123456789' ].
	self withServerDo: [ :server |
		(client := ZnClient new)
			url: server localUrl;
			addPath: 'echo';
			addPart: (ZnMimePart fieldName: 'username' value: 'john');
			addPart: (ZnMimePart fieldName: 'foo' entity: (ZnEntity text: '123'));
			addPart: (ZnMimePart fieldName: 'file' fileNamed: file fullName);
			post.
		self assert: client isSuccess.
		self assert: (client contents includesSubString: 'multipart') ].
	file delete.