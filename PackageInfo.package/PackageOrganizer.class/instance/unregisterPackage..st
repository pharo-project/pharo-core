registering
unregisterPackage: aPackageInfo
	packages removeKey: aPackageInfo packageName ifAbsent: [].	
	self changed: #packages; changed: #packageNames.
