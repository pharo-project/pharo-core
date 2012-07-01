*Network-URI
fullPathForURI: aURI
	^self activeDirectoryClass privateFullPathForURI: (FileDirectory default uri resolveRelativeURI: aURI)