methodAdded: anAnnouncement
	| item |	
		
	self isDisplayed ifFalse: [ ^ self ].
	refreshingBlockHolder ifNil: [ ^ self ].
	item := anAnnouncement method.
	(refreshingBlockHolder contents cull: item cull: anAnnouncement cull: self) ifFalse: [ ^ self ].
	
	UIManager default defer: [ 	| sel text boolean |
		boolean := textModel hasUnacceptedEdits.
		boolean ifTrue: [ text := textModel pendingText ].
		sel := listModel selectedItem.
		self messages: (listModel listItems add: item; yourself).
		listModel setSelectedItem: sel.
		boolean ifTrue: [ textModel pendingText: text ]
	]