checkPackage: aPackage
	(self bootstrapPackages includes: aPackage packageName)
		ifFalse: [ ^ self "Do not check" ].
	package := aPackage.
	self assertNoNewExternalDependency