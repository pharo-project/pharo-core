system announcements
testCaseStarted: anAnnouncement
	| class selector |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	class := anAnnouncement testCase class.
	selector := anAnnouncement testSelector.
	self selectedClass = class
		ifTrue: [| method correspondingClass icon |
			icon := self iconClass iconNamed: #testNotRun.
			method := class methodNamed: selector.
			correspondingClass := class correspondingClass.
			self methodWidget 
				setIcon: icon for: method;
				updateList ]