announcements
announceKeyboardFocusChange: gotFocus
	| announcement |
	announcement := gotFocus 
						ifTrue: [ MorphGotFocus morph: self ]
						ifFalse: [ MorphLostFocus morph: self ].
	self announcer announce: announcement.