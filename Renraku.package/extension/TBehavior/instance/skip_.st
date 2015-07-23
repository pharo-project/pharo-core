skip: aCritic

	(TheManifestBuilder of: self)
		skipRule: aCritic rule for: self.
		
	self wipeCritics.
	self methodsDo: #wipeCritics