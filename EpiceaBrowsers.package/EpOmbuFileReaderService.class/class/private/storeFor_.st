storeFor: fileName

	| fileReference |
	fileReference := fileName asFileReference.
	
	^ (OmFileStore 
		named: fileReference basenameWithoutExtension 
		inDirectory: fileReference parent)
		refresh;
		yourself