renameGroup

	| group |
	group := self selectedGroup.
	group ifNil: [ ^ self ].
	self groupsManager renameAGroup: group.
	self updateBothView