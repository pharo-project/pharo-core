menus behavior
mergeGroups

	| group |
	group := self mergeGroups: self selectedGroups.
	group
		ifNotNil: [ 
			self groupsManager addAGroup: group.
			self selectedGroup: group.
			self updateBothView]
