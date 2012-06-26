*Network-URI
privateFullPathForURI: aURI
	| path |

	path := String streamContents: [ :s | | first |
		first := false.
		aURI pathComponents do: [ :p |
			first ifTrue: [ s nextPut: self pathNameDelimiter ].
			first := true.
			s nextPutAll: p ] ].
	aURI path last = $/ ifTrue: [path := path,FileDirectory slash].
	^path unescapePercents
