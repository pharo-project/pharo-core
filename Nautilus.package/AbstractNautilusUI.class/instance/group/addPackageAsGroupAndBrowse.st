addPackageAsGroupAndBrowse

	self addPackageAsGroup
		ifNotNil: [:group | 
			self selectedGroup: group.
			self showGroups: true]
		ifNil: [
			| group |
			group := self model groupsManager groupNamed: self selectedPackage name.
			group ifNotNil: [ 
				self selectedGroup: group.
				self showGroups: true ]]