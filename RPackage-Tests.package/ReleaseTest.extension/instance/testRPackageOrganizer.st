*RPackage-Tests
testRPackageOrganizer
	self assert: RPackageOrganizer allInstances size equals: 1.
	self assert: RPackageOrganizer allInstances first == RPackageOrganizer default.