onInstallAndCreateGroupFrom: presenter
	self
		installStableVersion: presenter selection
		onSuccess: [ 
			presenter update.
			self createGroupWithLoadedPackagesFrom: presenter ]