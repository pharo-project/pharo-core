initialize
	ReSystemAnnouncer uniqueInstance unsubscribe: self uniqueInstance.
	ReSystemAnnouncer uniqueInstance weak when: ReCriticEvent send: #recordAnnouncement: to: self uniqueInstance.
	self uniqueInstance
		occupant: ReSystemAnnouncer uniqueInstance;
		register.