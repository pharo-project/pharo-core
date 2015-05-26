showLesson: aLesson withTitle: aString
	self window setLabel: aString.
	self shoutMorph 
		selectFrom: 0 to: 0;
		setText: aLesson lesson.
	(World systemWindows includes: self window) ifFalse: [self window openInWorld]
	