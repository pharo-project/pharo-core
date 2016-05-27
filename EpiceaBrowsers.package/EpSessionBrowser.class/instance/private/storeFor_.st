storeFor: fileReference

	^ (OmFileStore 
		named: fileReference basenameWithoutExtension 
		inDirectory: fileReference parent)
		refresh;
		yourself