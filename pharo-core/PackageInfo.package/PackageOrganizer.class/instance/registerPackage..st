registering
registerPackage: aPackageInfo
	packages at: aPackageInfo packageName put: aPackageInfo.
	self changed: #packages; changed: #packageNames.
