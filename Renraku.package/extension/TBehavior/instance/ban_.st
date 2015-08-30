ban: aCritic

	ReEngine uniqueInstance notifyCritic: aCritic of: aCritic target BannedOn: self.

	(TheManifestBuilder of: self)
		banRule: aCritic rule for: self.