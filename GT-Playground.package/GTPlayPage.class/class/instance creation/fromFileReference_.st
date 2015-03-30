fromFileReference: aFileReference
	^ self new 
		fileName: aFileReference basename;
		content: (aFileReference readStreamDo: #contents); 
		creationTime: (self creationTimeFrom: aFileReference);
		modificationTime: aFileReference modificationTime;
		yourself