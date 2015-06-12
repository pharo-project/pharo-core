testGZip

	| materialization |
	(File forceNewFileNamed: 'number.fuel.zip') writeStreamDo: [:aFileStream | 
		|gzip|
		gzip := GZipWriteStream on: aFileStream.
		FLSerializer newDefault serialize: 123 on: gzip.
		gzip close. ].
	
	(File openFileNamed: 'number.fuel.zip') readStreamDo: [:aFileStream | 
		|gzip|
		gzip := GZipReadStream on: aFileStream.		
		materialization := FLMaterializer newDefault 
			materializeFrom: gzip.
		gzip close. ].