packageSearchUpdate: aPattern
	packagePattern := (aPattern isNil or: [ aPattern trimBoth isEmpty ])
		ifTrue: [ nil ]
		ifFalse: [ self ensureSafePackagePattern: aPattern ].
	self updatePackages