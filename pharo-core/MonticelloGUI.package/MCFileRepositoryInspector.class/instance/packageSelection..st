morphic ui
packageSelection: aNumber
	selectedPackage := aNumber isZero
		ifFalse: [ (self packageList at: aNumber) asString ].
	self versionSelection: 0.
	self changed: #packageSelection; changed: #versionList