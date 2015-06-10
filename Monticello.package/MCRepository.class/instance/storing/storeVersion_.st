storeVersion: aVersion
	self basicStoreVersion: aVersion.
	self sendNotificationsForVersion: aVersion.
	SystemAnnouncer uniqueInstance announce: (MCVersionSaved version: aVersion repository: self).