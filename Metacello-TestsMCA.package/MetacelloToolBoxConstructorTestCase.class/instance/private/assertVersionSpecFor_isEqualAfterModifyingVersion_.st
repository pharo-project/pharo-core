assertVersionSpecFor: configurationName isEqualAfterModifyingVersion: versionString
	| original modified |
	original := ((Smalltalk at: configurationName asSymbol) project version: versionString) versionSpec printString.
	[ 
	(MetacelloToolBox configurationNamed: configurationName)
		modifyVersionMethodForVersion: versionString;
		commitMethod ] on: MetacelloCannotUpdateReleasedVersionError do: [ :ex | ex resume ].
	modified := ((Smalltalk at: configurationName asSymbol) project version: versionString) versionSpec printString.
	self assert: original = modified.
