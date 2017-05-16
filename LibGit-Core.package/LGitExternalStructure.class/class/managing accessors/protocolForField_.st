protocolForField: aString
	^ self fieldNamesAndProtocols
		at: aString
		ifAbsent: [ 'libgit-fields' ]