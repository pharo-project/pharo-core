initialize-release
initializeOn: aStream 
	
	self initialize.
	stream := FLBufferedWriteStream on: aStream.