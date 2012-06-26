searching
packageOfMethod: aMethodReference
	^ self packageOfMethod: aMethodReference ifNone: [self noPackageFound]