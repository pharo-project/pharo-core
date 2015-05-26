glamorousSpawn
	^ self icons
			at: #'glamorousSpawn'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousSpawnIconContents readStream) ].