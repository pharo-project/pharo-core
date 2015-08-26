testGZip

	| materialization |
	(File named: 'number.fuel.zip') writeStreamDo: [:aFileStream | 
		|gzip|
		gzip := GZipWriteStream on: aFileStream.
		FLSerializer newDefault serialize: 123 on: gzip.
		gzip close. ].
	
	(File named: 'number.fuel.zip') readStreamDo: [:aFileStream | 
		|gzip|
		gzip := GZipReadStream on: aFileStream.		
		materialization := FLMaterializer newDefault 
			materializeFrom: gzip ].