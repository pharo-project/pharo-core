announcement
groupSelected: anAnnouncement
	| group |
	group := anAnnouncement group.
	groupButton ifNotNil: [ container removeMorph: groupButton ].
	container removeMorph: self hFill.
	groupButton := PluggableButtonMorph new
							model: self;
							getMenuSelector: #groupMenu:;
							actionBlock: [:evt | 
								evt shiftPressed
									ifTrue: [ Nautilus openOnGroup: group ]
									ifFalse: [ model ui selectedGroup: group ]].
								
	groupButton
		label: group name;
		height: 25.
	group ifNotNil: [ container addMorph: groupButton ].
	container addMorph: self hFill