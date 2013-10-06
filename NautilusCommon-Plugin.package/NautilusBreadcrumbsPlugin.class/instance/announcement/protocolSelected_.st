protocolSelected: anAnnouncement
	| protocol |
	
	protocol := anAnnouncement category.
	protocolButton ifNotNil: [ container removeMorph: protocolButton ].
	container removeMorph: self hFill.
	protocolButton := PluggableButtonMorph new
							model: self;
							getMenuSelector: #protocolMenu:;
							actionBlock: [:evt |
								evt shiftPressed 
									ifTrue: [
										Nautilus openOnCategory: protocol ofClass: self model selectedClass ]
									ifFalse: [
										model ui selectedCategory: protocol.
										model ui update ]].
	protocolButton
		label: protocol asString;
		height: 25.
	protocol ifNotNil: [ container addMorph: protocolButton ].
	container addMorph: self hFill.