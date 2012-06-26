path access
pathFromUrl: aFileUrl
	
	^String streamContents: [ :s | | first |
		first := false.
		aFileUrl path do: [ :p |
			first ifTrue: [ s nextPut: self pathNameDelimiter ].
			first := true.
			s nextPutAll: p ] ].