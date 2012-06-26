as yet unclassified
storeVersion: aVersion
	self basicStoreVersion: (self prepareVersionForStorage: aVersion).
	self sendNotificationsForVersion: aVersion