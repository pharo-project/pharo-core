unregistering
unregister: aWorkingCopy
	self unregisterWorkingCopy: aWorkingCopy.
	self unregisterRepositories: aWorkingCopy.
	self unregisterPackageInfo: aWorkingCopy