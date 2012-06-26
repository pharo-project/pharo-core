registering
unregisterPackageNamed: aString
	self unregisterPackage: (self packageNamed: aString ifAbsent: [^ self])