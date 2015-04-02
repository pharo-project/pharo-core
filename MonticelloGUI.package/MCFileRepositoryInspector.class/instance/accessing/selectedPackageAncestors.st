selectedPackageAncestors
	selectedPackageAncestors
		ifNil: [ 
			selectedPackage
				ifNotNil: [ 
					(MCWorkingCopy registry at: (MCPackage named: selectedPackage) ifAbsent: [  ])
						ifNotNil: [ :aWorkingCopy | selectedPackageAncestors := aWorkingCopy allAncestors collect: #name ] ] ].
	^ selectedPackageAncestors