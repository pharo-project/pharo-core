register
	MBConfigurationRoot current announcer weak
		when: MBConfigurationInfoChanged
		send: #refreshConfiguration
		to: self