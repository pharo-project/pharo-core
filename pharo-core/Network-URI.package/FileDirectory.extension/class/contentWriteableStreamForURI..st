*Network-URI
contentWriteableStreamForURI: aURI
	| fullPath stream |
	fullPath := self fullPathForURI: aURI.
	stream := FileStream oldFileFullyNamed: fullPath.
	^stream binary