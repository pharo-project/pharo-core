*Network-URI
contentStreamForURI: aURI
	| fullPath stream |

	fullPath := self fullPathForURI: aURI.
	stream := FileStream readOnlyFileFullyNamed: fullPath.
	^stream binary
