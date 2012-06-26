as yet unclassified
basicStoreVersion: aVersion
	self root at: aVersion info put: aVersion.
	self db commit.