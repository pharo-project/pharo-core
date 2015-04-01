packageSelection: aNumber
	"Track a package change to have the ancestors list loaded."

	"selectedPackage is the selected package name :("

	selectedPackage := aNumber isZero
		ifFalse: [ (self packageList at: aNumber) asString ].
	aNumber isZero
		ifTrue: [ selectedPackageAncestors := nil ]
		ifFalse: [ 
			(MCWorkingCopy registry at: (MCPackage named: selectedPackage) ifAbsent: [  ])
				ifNotNil: [ :aWorkingCopy | selectedPackageAncestors := aWorkingCopy allAncestors collect: #name ]
				ifNil: [ selectedPackageAncestors := nil ] ].
	self versionSelection: 0.
	self
		changed: #packageSelection;
		changed: #versionList