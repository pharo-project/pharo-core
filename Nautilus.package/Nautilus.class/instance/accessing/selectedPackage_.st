selectedPackage: anObject
	selectedPackage := anObject.
	self announcer announce: ( NautilusPackageSelected package: anObject ).
	self ui ifNotNil: [ self ui sourceTextModel announce: NautilusPackageSelected ]