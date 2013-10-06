shouldOpenOnGroups

	^ self class openOnGroups and: [ (self class groupsManagerFrom: self) isEmpty not ]