whenTextAreaLostFocus: anAnnounce
	self hasActiveDialog ifFalse: [ ^self ].
	self announcer announce: RubFindTextChanged new
