mostSpecificPackageOfClass: aClass
	^ self mostSpecificPackageOfClass: aClass ifNone: [self noPackageFound]