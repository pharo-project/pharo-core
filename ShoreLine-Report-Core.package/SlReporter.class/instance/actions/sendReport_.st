sendReport: aReport

	^ self send: (FLSerializer serializeToByteArray: aReport asDictionary)