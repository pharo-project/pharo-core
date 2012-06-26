converting
pathFromString: aString
	| normalized pathClass |
	normalized := aString replaceAll: UnixStore delimiter with: self delimiter.
	pathClass := (normalized first isLetter and: [normalized second = $:])
		ifTrue: [ AbsolutePath ]
		ifFalse: [ RelativePath ].
	^pathClass withAll: (pathClass canonicalizeElements: (self delimiter split: normalized))