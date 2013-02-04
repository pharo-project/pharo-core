group
addMatchingPackagesInGroupsAndBrowse

	( self addMatchingPackagesInGroups )
		ifNotNil: [:group | 
			self selectedGroup: group.
			self showGroups: true]