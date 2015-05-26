showGroupsChanged: anAnnouncement

	container removeMorph: self hFill.
	model showGroups 
		ifTrue: [ 
			groupButton ifNotNil: [ container addMorph: groupButton behind: packageButton ].
			packageButton ifNotNil: [ container removeMorph: packageButton ]]
		ifFalse: [
			packageButton ifNotNil: [ container addMorph: packageButton behind: groupButton ].
			groupButton ifNotNil: [ container removeMorph: groupButton ]].
	container addMorph: self hFill.