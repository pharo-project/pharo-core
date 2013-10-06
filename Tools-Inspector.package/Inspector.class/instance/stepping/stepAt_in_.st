stepAt: millisecondClockValue in: aWindow
	| newText |

	(CodeHolder smartUpdating and: [(millisecondClockValue - self timeOfLastListUpdate) > 8000]) "Not more often than once every 8 seconds"
		ifTrue:
			[self updateListsAndCodeIn: aWindow.
			timeOfLastListUpdate := millisecondClockValue].

	newText := self contentsIsString
		ifTrue: [self selection]
		ifFalse: ["keep it short to reduce time to compute it"
			self selectionPrintString ].
	newText = contents ifFalse:
		[contents := newText.
		self changed: #contents]