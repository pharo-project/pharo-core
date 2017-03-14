packageSelection
	^self packageList ifNotNil: [
		^ self packageList indexOf: selectedPackage
	]