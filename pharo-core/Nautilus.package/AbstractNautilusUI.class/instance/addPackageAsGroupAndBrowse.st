menus behavior
addPackageAsGroupAndBrowse

	self addPackageAsGroup
		ifNotNil: [:group | 
			self selectedGroup: group.
			self showGroups: true]
		ifNil: [
			| group |
			group := self model class groupsManager groups detect: [:each | each name = self selectedPackage name] ifNone: [ nil ].
			group ifNotNil: [ 
				self selectedGroup: group.
				self showGroups: true ]]