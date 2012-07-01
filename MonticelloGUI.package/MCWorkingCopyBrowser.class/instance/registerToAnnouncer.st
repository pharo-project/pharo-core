morphic ui
registerToAnnouncer

	SystemAnnouncer announcer weak
		on: MCVersionCreated send: #update: to: self;
		on: MCPackageModified send: #update: to: self;
		on: MCWorkingCopyCreated send: #update: to: self;
		on: MCWorkingCopyDeleted send: #update: to: self