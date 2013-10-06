enable

	Job jobAnnouncer on: JobStart send: #startJob: to: self.
	Job jobAnnouncer on: JobEnd send: #endJob: to: self.
	Job jobAnnouncer on: JobChange send: #updateJob: to: self.
