removeFileNamed: remoteFileName
	self sendCommand: 'DELE ', remoteFileName.
	self checkResponse.
