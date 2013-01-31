enabling/disabling
enable

	SystemAnnouncer uniqueInstance on: JobStart send: #startJob: to: self.
	SystemAnnouncer uniqueInstance on: JobEnd send: #endJob: to: self.
	SystemAnnouncer uniqueInstance on: JobChange send: #updateJob: to: self.
