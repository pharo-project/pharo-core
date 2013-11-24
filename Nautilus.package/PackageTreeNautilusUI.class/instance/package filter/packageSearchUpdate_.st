packageSearchUpdate: aPattern
	packagePattern := (aPattern isNil or: [ aPattern trimBoth isEmpty ])
		ifTrue: [ '.*' asRegexIgnoringCase ]
		ifFalse: [ self ensureSafePackagePattern: aPattern ].
	self updatePackages