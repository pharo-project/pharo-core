registerToMCAnnouncements
	SystemAnnouncer uniqueInstance weak	
		on: MCVersionCreated send: #newMCVersion: to: self;
		on: MCPackageModified send: #mcPackageModified: to: self;
		on: MCWorkingCopyCreated send: #mcWorkingCopyCreated: to: self;
		on: MCWorkingCopyDeleted send: #mcWorkingCopyDeleted: to: self.
