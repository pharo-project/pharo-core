register
	MBConfigurationRoot current announcer weak
		on: MBConfigurationInfoChanged
		send: #refreshConfiguration
		to: self