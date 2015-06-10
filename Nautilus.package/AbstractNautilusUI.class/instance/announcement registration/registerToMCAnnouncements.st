registerToMCAnnouncements
	SystemAnnouncer uniqueInstance weak	
		when: MCPackageModified send: #mcPackageModified: to: self;
		when: MCWorkingCopyCreated send: #mcWorkingCopyCreated: to: self;
		when: MCWorkingCopyDeleted send: #mcWorkingCopyDeleted: to: self.
