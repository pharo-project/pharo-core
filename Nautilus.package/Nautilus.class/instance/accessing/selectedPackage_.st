selectedPackage: anObject
	selectedPackage := anObject.
	anObject
		ifNotNil: [ 
			self announcer announce: (NautilusPackageSelected package: anObject).
			self ui ifNotNil: [ self ui sourceTextModel announce: NautilusPackageSelected ] ]