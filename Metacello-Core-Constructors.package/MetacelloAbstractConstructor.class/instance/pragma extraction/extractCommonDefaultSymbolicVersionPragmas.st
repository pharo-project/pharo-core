extractCommonDefaultSymbolicVersionPragmas

	| aDict |
	aDict := Dictionary new.
	self extractPragmas: #defaultSymbolicVersion: for: MetacelloBaseConfiguration into: aDict.
	^aDict