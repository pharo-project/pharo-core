registerToAnnouncer
	SystemAnnouncer uniqueInstance weak
		when: MCVersionCreated send: #update: to: self;
		when: MCPackageModified send: #update: to: self;
		when: MCWorkingCopyCreated send: #update: to: self;
		when: MCWorkingCopyDeleted send: #update: to: self