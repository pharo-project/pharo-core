registerToMCAnnouncements
	SystemAnnouncer uniqueInstance weak	
		when: MCVersionCreated send: #newMCVersion: to: self;
		when: MCPackageModified send: #mcPackageModified: to: self;
		when: MCWorkingCopyCreated send: #mcWorkingCopyCreated: to: self;
		when: MCWorkingCopyDeleted send: #mcWorkingCopyDeleted: to: self.
