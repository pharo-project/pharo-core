*Network-URI
contentUTF8StreamForURI: aURI
	| fullPath |
	fullPath := self fullPathForURI: aURI.
	^FileStream readOnlyFileFullyNamed: fullPath
