aGroupHasBeenUnregistered: anAnnouncement

	| group |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [^ self ].
	self groupsAreVisible ifFalse: [ ^ self ].
	group := anAnnouncement group.
	(self groupsManager includes: group)
		ifTrue: [ self updateGroupView ]