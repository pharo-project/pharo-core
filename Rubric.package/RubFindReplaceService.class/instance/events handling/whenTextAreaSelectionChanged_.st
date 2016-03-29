whenTextAreaSelectionChanged: anAnnouncement 
	self hasActiveDialog ifFalse: [ ^self ].
	self updateFindStartIndex