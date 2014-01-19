methodModified: anAnnouncement
	| item oldItem sel index |
	
	self isDisplayed ifFalse: [ ^ self ].
	refreshingBlockHolder ifNil: [ ^ self ].
	item := anAnnouncement newMethod.
	oldItem := anAnnouncement oldMethod.
	sel := listModel selectedItem.
	sel ifNil: [ ^ self ].
	(sel notNil and: [(sel methodClass = oldItem methodClass and: [ sel selector = oldItem selector ])]) ifFalse: [ ^ self ].
	(refreshingBlockHolder value cull: item cull: anAnnouncement cull: self) ifFalse: [ ^ self ].	
		index := listModel selectedIndex .
	UIManager default defer:  [	| text list edits |
		edits := textModel hasUnacceptedEdits.
		edits
			ifTrue: [ text := textModel pendingText ].
		list := listModel listItems 
				remove: sel ifAbsent: [];
				add: item asFullRingDefinition; "to ensure it's still as RGMethod"
				yourself. 
		self messages: list.
		listModel setSelectedIndex: index.
		edits
			ifTrue: [ 
				textModel pendingText: text.
				textModel hasEditingConflicts: true ].
		]