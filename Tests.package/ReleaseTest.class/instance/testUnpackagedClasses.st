testing
testUnpackagedClasses
	| unpackagedClasses |
	unpackagedClasses := Smalltalk allClasses select: [:each | (RPackageOrganizer default packageOf: each) packageName = RPackage defaultPackageName ].
	self assert: unpackagedClasses isEmpty 
