searching
packageOfClass: aClass
	^ self packageOfClass: aClass ifNone: [self noPackageFound]