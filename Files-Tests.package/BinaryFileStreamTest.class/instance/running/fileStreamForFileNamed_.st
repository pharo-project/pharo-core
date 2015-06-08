fileStreamForFileNamed: fileName
	^ (File named: fileName asFileReference fullName) openForWrite readStream