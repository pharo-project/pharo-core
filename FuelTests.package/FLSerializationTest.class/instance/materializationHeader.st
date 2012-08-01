as yet unclassified
materializationHeader
	
	self streamFactory readStreamDo: [:aStream |
		^ self materializer materializeHeaderFrom: aStream ]