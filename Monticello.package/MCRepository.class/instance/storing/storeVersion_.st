storeVersion: aVersion
	self retryOnCredentialRequest: [ self basicStoreVersion: aVersion ].
	SystemAnnouncer uniqueInstance announce: (MCVersionSaved version: aVersion repository: self)