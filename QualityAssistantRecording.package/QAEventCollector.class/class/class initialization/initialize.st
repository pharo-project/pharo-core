initialize
	uniqueInstance := WeakArray new: 1.
	ReSystemAnnouncer uniqueInstance unsubscribe: self.
	ReSystemAnnouncer uniqueInstance weak when: ReCriticEvent send: #recordAnnouncement: to: self