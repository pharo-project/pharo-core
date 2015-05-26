shouldOpenOnGroups

	^ self class openOnGroups and: [ (self class groupsManager) isEmpty not ]