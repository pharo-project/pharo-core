*Network-URI
privateFullPathForURI: aURI
	^(aURI path copyReplaceAll: '/' with: self slash) unescapePercents