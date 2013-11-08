potentialLocationsOfSourcesFile
	^ {
		Smalltalk vm directory.
		Smalltalk vm fullPath asFileReference parent.
		FileLocator systemApplicationSupport.
		FileLocator userApplicationSupport.
		"Take care of .app that have a 'Resources' folder as a sibling of the vm binary"
		Smalltalk vm fullPath asFileReference parent parent / 'Resources'.
	}