ban: aCritic

	ReSystemAnnouncer uniqueInstance
		notifyCritic: aCritic
		of: aCritic sourceAnchor entity
		bannedOn: self.

	(TheManifestBuilder of: self)
		banRule: aCritic rule for: self.