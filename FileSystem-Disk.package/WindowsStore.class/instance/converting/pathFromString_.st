pathFromString: aString
	| normalized pathClass |
	normalized := aString copy replaceAll: UnixStore delimiter with: self delimiter.
	pathClass := (Path isAbsoluteWindowsPath: normalized)
		ifTrue: [ AbsolutePath ]
		ifFalse: [ RelativePath ].
	^pathClass withAll: (pathClass canonicalizeElements: (self delimiter split: normalized))