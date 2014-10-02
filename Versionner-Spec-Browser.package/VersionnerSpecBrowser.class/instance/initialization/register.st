register
	"Set up dependencies"
	
	MBConfigurationRoot current announcer weak
		when: MBConfigurationInfoCreated send: #refresh to: self;
		when: MBConfigurationInfoChanged send: #refresh to: self;
		when: MBConfigurationInfoDeleted send: #refresh to: self;
		when: MBInfoListChanged send: #refresh to: self.
