insistMenu

	| count |
	ShortcutReminderMorph enableShortcutReminder ifFalse: [ ^ self ].
	count := self countingMenu at: self keyText ifAbsentPut: [ 1 ].
	count > ShortcutReminderMorph timesShortcutReminder
		ifFalse: [  
			self keyText ifNotNil: [ (ShortcutReminderMorph with: (self itemShortcut text)) openCenteredInWorld.
			self countingMenu at: self keyText put: count + 1 ]
		 ].
	