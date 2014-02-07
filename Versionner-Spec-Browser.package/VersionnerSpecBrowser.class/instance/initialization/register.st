register
	"Set up dependencies"
	
	MBConfigurationRoot current announcer weak
		on: MBConfigurationInfoCreated send: #refresh to: self;
		on: MBConfigurationInfoChanged send: #refresh to: self;
		on: MBConfigurationInfoDeleted send: #refresh to: self;
		on: MBInfoListChanged send: #refresh to: self.
