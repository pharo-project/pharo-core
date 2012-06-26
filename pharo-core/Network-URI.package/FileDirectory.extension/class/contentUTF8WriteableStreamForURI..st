*Network-URI
contentUTF8WriteableStreamForURI: aURI
	| fullPath |
	fullPath := self fullPathForURI: aURI.
	^FileStream oldFileFullyNamed: fullPath