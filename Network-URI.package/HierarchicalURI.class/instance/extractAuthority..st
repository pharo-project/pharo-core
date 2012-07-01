private
extractAuthority: aString
	| endAuthorityIndex authorityString |
	endAuthorityIndex := (aString indexOf: $/ ) - 1.
	endAuthorityIndex < 0
		ifTrue: [endAuthorityIndex := aString size].
	authorityString := aString copyFrom: 1 to: endAuthorityIndex.
	authority := URIAuthority fromString: authorityString.
	^aString copyFrom: endAuthorityIndex+1 to: aString size