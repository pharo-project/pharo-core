testCaseStarted: anAnnouncement
	| class selector |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	class := anAnnouncement testCase class.
	selector := anAnnouncement testSelector.
	self selectedClass = class
		ifTrue: [| method icon |
			icon := Smalltalk ui icons iconNamed: #testNotRunIcon.
			method := class methodNamed: selector.
			self methodWidget 
				setIcon: icon for: method;
				updateList ]