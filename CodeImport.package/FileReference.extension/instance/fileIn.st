*codeimport
fileIn

	self fileStreamDo: [:fileStream | 
		CodeImporter evaluateFileStream: fileStream ]