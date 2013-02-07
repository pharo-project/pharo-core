*RPackage-Tests
testRPackageOrganizer
	self 
		assert: RPackageOrganizer allInstances size = 1
		description: 'There are multiple (', RPackageOrganizer allInstances size asString, ') instances of RPackageOrganizer'.
		  
	self 
		assert: RPackageOrganizer allInstances first == RPackageOrganizer default 
		description: 'The default package organizer is the not the only instance of RPackageOrganizer'.