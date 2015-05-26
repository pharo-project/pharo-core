methodAdded: anAnnouncement
	| item |	
		
	self isDisplayed ifFalse: [ ^ self ].
	refreshingBlockHolder ifNil: [ ^ self ].
	item := anAnnouncement method.
	(refreshingBlockHolder value cull: item cull: anAnnouncement cull: self) ifFalse: [ ^ self ].
	
	UIManager default defer: [ 
		((item methodClass notNil) and:[item methodClass isObsolete not])
		ifTrue:[	| sel text boolean |
			boolean := textModel hasUnacceptedEdits.
			boolean ifTrue: [ text := textModel pendingText ].
			sel := listModel selectedItem.
			self messages: (listModel listItems add: item asFullRingDefinition; yourself).
			listModel setSelectedItem: sel.
			boolean ifTrue: [ textModel pendingText: text ]
		]
	]