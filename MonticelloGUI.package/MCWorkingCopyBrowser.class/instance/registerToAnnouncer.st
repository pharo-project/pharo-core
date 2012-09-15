morphic ui
registerToAnnouncer

	SystemAnnouncer uniqueInstance weak
		on: MCVersionCreated send: #update: to: self;
		on: MCPackageModified send: #update: to: self;
		on: MCWorkingCopyCreated send: #update: to: self;
		on: MCWorkingCopyDeleted send: #update: to: self